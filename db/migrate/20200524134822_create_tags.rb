class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :content
      t.string :article

      t.timestamps
    end
  end
end