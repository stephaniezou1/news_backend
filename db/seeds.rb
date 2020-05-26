Article.destroy_all
Article.get_top_headlines
Tag.destroy_all
Joiner.destroy_all

tag1 = Tag.create(content: "dogs")
Joiner.create(article_id: Article.all.sample.id, tag_id: tag1.id)

puts "seeding done"