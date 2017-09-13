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

ActiveRecord::Schema.define(version: 20170913191416) do

  create_table "owners", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "uccdted_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "seating_id"
    t.integer  "party_size"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.text     "name"
    t.text     "cuisine_style"
    t.integer  "price_range"
    t.text     "email"
    t.text     "phone_number"
    t.text     "address"
    t.integer  "capacity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "owner_id"
    t.integer  "user_id"
    t.index ["owner_id"], name: "index_restaurants_on_owner_id"
  end

  create_table "seatings", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "start_hour"
    t.date     "date"
    t.index ["restaurant_id"], name: "index_seatings_on_restaurant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
