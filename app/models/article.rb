class Article < ApplicationRecord
    has_many :joiners
    has_many :tags, through: :joiners

    require 'news-api'
    require 'aylien_text_api'
    require 'date'

    def self.get_top_headlines
        news_api_key = ENV['news_api_key']
        newsapi = News.new(news_api_key)
        top_headlines =
            newsapi.get_top_headlines(
                language: 'en',
                country: 'us'
            )
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
