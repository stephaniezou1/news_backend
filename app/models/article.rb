class Article < ApplicationRecord
    has_many :joiners
    has_many :tags, through: :joiners

    require 'news-api'

    def self.get_top_headlines(category)
        NEWS_API_KEY = ENV['news_api_key']
        newsapi = News.new(NEWS_API_KEY)
        top_headlines =
            newsapi.get_top_headlines(
                category: category,
                language: 'en',
                country: 'us'
            )
    end

end
