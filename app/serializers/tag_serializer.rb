class TagSerializer < ActiveModel::Serializer
  attributes :id, :content, :article_id
  has_many :articles
end