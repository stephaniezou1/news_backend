class Article < ApplicationRecord
    has_many :joiners
    has_many :tags, through: :joiners
end
