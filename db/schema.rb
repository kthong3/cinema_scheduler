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

ActiveRecord::Schema.define(version: 20180321210445) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cinemas", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "admin_id"
    t.index ["admin_id"], name: "index_cinemas_on_admin_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.integer "length"
    t.datetime "release_date"
    t.string "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "admin_id"
    t.index ["admin_id"], name: "index_films_on_admin_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "day"
    t.datetime "open"
    t.datetime "close"
    t.bigint "cinema_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_schedules_on_cinema_id"
  end

  create_table "screenings", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "cinema_id"
    t.bigint "film_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_screenings_on_cinema_id"
    t.index ["film_id"], name: "index_screenings_on_film_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cinemas", "users", column: "admin_id"
  add_foreign_key "films", "users", column: "admin_id"
  add_foreign_key "schedules", "cinemas"
  add_foreign_key "screenings", "cinemas"
  add_foreign_key "screenings", "films"
end
