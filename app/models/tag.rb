class Tag < ApplicationRecord
    has_many :joiners
    has_many :articles, through: :joiners
end
