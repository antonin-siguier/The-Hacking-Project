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

ActiveRecord::Schema.define(version: 20180320140223) do

  create_table "archived_boards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "lock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_match"
  end

  create_table "archived_boards_users", id: false, force: :cascade do |t|
    t.integer "archived_board_id", null: false
    t.integer "user_id", null: false
  end

  create_table "boards", force: :cascade do |t|
    t.integer "lock", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "boards_users", id: false, force: :cascade do |t|
    t.integer "board_id", null: false
    t.integer "user_id", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "lock"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches_users", id: false, force: :cascade do |t|
    t.integer "match_id", null: false
    t.integer "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.text "bio"
    t.string "phone"
    t.integer "match_count"
    t.integer "karma", default: 10
    t.string "city"
    t.integer "gender"
    t.text "picture"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean "first_time", default: true
    t.boolean "randomize", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
