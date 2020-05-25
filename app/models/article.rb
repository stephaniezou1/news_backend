class Article < ApplicationRecord
    has_many :joiners
    has_many :tags, through: :joiners

    require 'news-api'
    require 'aylien_text_api'
    require 'date'

    def self.get_top_headlines
        newsapi_key = ENV['news_api_key']
        newsapi = News.new(newsapi_key)
        # byebug;
        top_headlines = newsapi.get_top_headlines(language: 'en', country: 'us')
        top_headlines.each do |article|
          Article.create!(
            title: article.title, 
            author: article.author,
            description: article.description,
            source_name: article.name,
            published_at: article.publishedAt,
            url: article.url,
            url_to_image: article.urlToImage,
            content: article.content
          )
        end
        puts "article seeded"
    end

    def summarize
        text_api_key= ENV['aylien_api_key']
        text_api_id= ENV['aylien_api_id']
        textapi = AylienTextApi::Client.new(
          app_id: text_api_id,
          app_key: text_api_key
        )
        if self.date === Date.today.to_s
          result = textapi.summarize url: self.url, sentences_number: 5
          if result[:sentences].count > 2
            self.update(body: result[:sentences].join("\n"))
            return true
          else
            puts "Could not summarize properly from #{self.url}"
            return false
          end
        else
          return false
        end
      end

      def self.get_date(article_obj)
        date = Date.parse(article_obj.publishedAt)
        date.to_s
      end

end
