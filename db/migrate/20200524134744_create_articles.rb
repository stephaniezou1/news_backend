class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :source_name
      t.string :published_at
      t.text :url
      t.text :url_to_image
      t.text :content
      t.timestamps
    end
  end
end
