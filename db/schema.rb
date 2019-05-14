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

ActiveRecord::Schema.define(version: 2019_05_01_193223) do

  create_table "coworkingfilters", force: :cascade do |t|
    t.string "city"
    t.date "beginDate"
    t.date "finishDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coworkingspaces", force: :cascade do |t|
    t.integer "user_id"
    t.float "price"
    t.float "area"
    t.string "description"
    t.boolean "is_booked"
    t.string "address"
    t.string "city"
    t.datetime "beginDate"
    t.datetime "finishDate"
    t.boolean "has_kitchen"
    t.boolean "has_meetroom"
    t.boolean "has_free_wifi"
    t.boolean "has_free_cookies"
    t.integer "people_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
