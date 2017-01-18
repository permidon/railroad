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

ActiveRecord::Schema.define(version: 20170117142523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string   "number"
    t.string   "type"
    t.integer  "upper_places"
    t.integer  "lower_places"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "train_id"
    t.integer  "side_upper_places"
    t.integer  "side_lower_places"
    t.string   "seat_places"
    t.index ["id", "type"], name: "index_cars_on_id_and_type", using: :btree
    t.index ["number"], name: "index_cars_on_number", using: :btree
    t.index ["train_id"], name: "index_cars_on_train_id", using: :btree
  end

  create_table "railway_stations", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_railway_stations_on_title", using: :btree
  end

  create_table "railway_stations_routes", force: :cascade do |t|
    t.integer "railway_station_id"
    t.integer "route_id"
    t.integer "position"
    t.time    "arrival"
    t.time    "departure"
    t.index ["position"], name: "index_railway_stations_routes_on_position", using: :btree
    t.index ["railway_station_id"], name: "index_railway_stations_routes_on_railway_station_id", using: :btree
    t.index ["route_id"], name: "index_railway_stations_routes_on_route_id", using: :btree
  end

  create_table "routes", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_routes_on_title", using: :btree
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.integer  "train_id"
    t.integer  "first_station_id"
    t.integer  "last_station_id"
    t.string   "fullname"
    t.string   "passport"
    t.index ["first_station_id"], name: "index_tickets_on_first_station_id", using: :btree
    t.index ["last_station_id"], name: "index_tickets_on_last_station_id", using: :btree
    t.index ["number"], name: "index_tickets_on_number", using: :btree
    t.index ["train_id"], name: "index_tickets_on_train_id", using: :btree
    t.index ["user_id"], name: "index_tickets_on_user_id", using: :btree
  end

  create_table "trains", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "current_station_id"
    t.integer  "route_id"
    t.boolean  "cars_order"
    t.index ["current_station_id"], name: "index_trains_on_current_station_id", using: :btree
    t.index ["number"], name: "index_trains_on_number", using: :btree
    t.index ["route_id"], name: "index_trains_on_route_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.boolean  "admin",                  default: false
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
