class AddLikesToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :likes, :integer
  end
end
