class TagSerializer < ActiveModel::Serializer
  attributes :id, :content, :article_id
  has_many :articles
  has_many :joiners
end