# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_10_060901) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_artists_on_user_id"
  end

  create_table "days", force: :cascade do |t|
    t.date "dayDate"
    t.string "comment"
    t.string "location"
    t.integer "vacation_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_days_on_user_id"
    t.index ["vacation_id"], name: "index_days_on_vacation_id"
  end

  create_table "dayys", force: :cascade do |t|
    t.date "dayDate"
    t.string "comment"
    t.string "location"
    t.integer "vacation_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dayys_on_user_id"
    t.index ["vacation_id"], name: "index_dayys_on_vacation_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.time "time"
    t.integer "day_id", null: false
    t.integer "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["day_id"], name: "index_events_on_day_id"
    t.index ["users_id"], name: "index_events_on_users_id"
  end

# Could not dump table "records" because of following StandardError
#   Unknown type 'object' for column 'dataa'

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vacations", force: :cascade do |t|
    t.string "name"
    t.date "startDate"
    t.date "endDate"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.json "data"
    t.index ["user_id"], name: "index_vacations_on_user_id"
  end

  add_foreign_key "days", "users"
  add_foreign_key "days", "vacations"
  add_foreign_key "dayys", "users"
  add_foreign_key "dayys", "vacations"
  add_foreign_key "events", "days"
  add_foreign_key "events", "users", column: "users_id"
  add_foreign_key "vacations", "users"
end
