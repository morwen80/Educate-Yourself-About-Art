# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_02_171002) do

  create_table "artists", force: :cascade do |t|
    t.string "slug"
    t.string "name"
    t.string "gender"
    t.string "biography"
    t.string "birth_day"
    t.string "death_day"
    t.string "hometown"
    t.string "location"
    t.string "nationality"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artworks", force: :cascade do |t|
    t.string "slug"
    t.string "title"
    t.string "category"
    t.string "medium"
    t.string "published_date"
    t.string "collecting_institution"
    t.string "image"
    t.text "image_rights"
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_artworks_on_artist_id"
  end

  create_table "artworks_lists", id: false, force: :cascade do |t|
    t.integer "list_id", null: false
    t.integer "artwork_id", null: false
    t.index ["list_id", "artwork_id"], name: "index_artworks_lists_on_list_id_and_artwork_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
