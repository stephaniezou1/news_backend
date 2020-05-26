class TagSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_many :articles
  has_many :joiners
end