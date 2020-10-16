Joiner.destroy_all
Article.destroy_all
Article.get_top_headlines
Tag.destroy_all

tag2 = Tag.create(content: "politics")
tag3 = Tag.create(content: "environment")
tag4 = Tag.create(content: "travel")

Joiner.create(article_id: Article.all.sample.id, tag_id: tag2.id)
Joiner.create(article_id: Article.all.sample.id, tag_id: tag2.id)

puts "seeding done"