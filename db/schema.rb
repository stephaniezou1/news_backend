ActiveRecord::Schema.define(version: 2020_05_24_134930) do

  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "tag"
    t.string "title"
    t.string "author"
    t.string "description"
    t.string "source_name"
    t.string "published_at"
    t.text "url"
    t.text "url_to_image"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "joiners", force: :cascade do |t|
    t.bigint "article_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_joiners_on_article_id"
    t.index ["tag_id"], name: "index_joiners_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "content"
    t.string "article"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "joiners", "articles"
  add_foreign_key "joiners", "tags"
end
