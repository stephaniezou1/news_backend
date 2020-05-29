class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :source_name, :published_at, :url, :url_to_image, :content, :likes
  # has_many :tags
  has_many :joiners
end

# to delete a tag from a specific article, call on the joiner model
# delete the joiner