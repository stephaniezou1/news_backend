# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_24_134930) do

  # These are extensions that must be enabled in order to support this database
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

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "author"
    t.index ["movie_id"], name: "index_comments_on_movie_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "description"
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

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "year"
    t.string "length"
    t.string "overview"
    t.string "poster_url"
    t.bigint "genre_id", null: false
    t.string "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "likes"
    t.index ["genre_id"], name: "index_movies_on_genre_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "content"
    t.string "article"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "movies"
  add_foreign_key "joiners", "articles"
  add_foreign_key "joiners", "tags"
  add_foreign_key "movies", "genres"
end
