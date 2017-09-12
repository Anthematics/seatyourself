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

ActiveRecord::Schema.define(version: 20170912173920) do

  create_table "Restaurants", force: :cascade do |t|
    t.text     "name"
    t.text     "cuisine_style"
    t.integer  "price_range"
    t.text     "email"
    t.text     "phone_number"
    t.text     "address"
    t.integer  "capacity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "Owner_id"
    t.index ["Owner_id"], name: "index_Restaurants_on_Owner_id"
  end

  create_table "owners", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seatings", force: :cascade do |t|
    t.integer  "Restaurant_id"
    t.integer  "filled"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["Restaurant_id"], name: "index_seatings_on_Restaurant_id"
  end

end
