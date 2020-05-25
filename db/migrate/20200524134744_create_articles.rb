class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :tag
      t.string :name
      t.string :author
      t.string :publication
      t.string :date

      t.timestamps
    end
  end
end
