# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160511014423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hours", force: true do |t|
    t.integer  "store_id"
    t.string   "mon_o_hour",     default: "00"
    t.string   "mon_c_hour",     default: "00"
    t.string   "tue_o_hour",     default: "00"
    t.string   "tue_c_hour",     default: "00"
    t.string   "wed_o_hour",     default: "00"
    t.string   "wed_c_hour",     default: "00"
    t.string   "thu_o_hour",     default: "00"
    t.string   "thu_c_hour",     default: "00"
    t.string   "fri_o_hour",     default: "00"
    t.string   "fri_c_hour",     default: "00"
    t.string   "sat_o_hour",     default: "00"
    t.string   "sat_c_hour",     default: "00"
    t.string   "sun_o_hour",     default: "00"
    t.string   "sun_c_hour",     default: "00"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "mon_closed",     default: false
    t.boolean  "tue_closed"
    t.boolean  "wed_closed",     default: false
    t.boolean  "thu_closed",     default: false
    t.boolean  "fri_closed",     default: false
    t.boolean  "sat_closed",     default: false
    t.boolean  "sun_closed",     default: false
    t.string   "mon_o_min",      default: "00"
    t.string   "mon_c_min",      default: "00"
    t.string   "tue_o_min",      default: "00"
    t.string   "tue_c_min",      default: "00"
    t.string   "wed_o_min",      default: "00"
    t.string   "wed_c_min",      default: "00"
    t.string   "thu_o_min",      default: "00"
    t.string   "thu_c_min",      default: "00"
    t.string   "fri_o_min",      default: "00"
    t.string   "fri_c_min",      default: "00"
    t.string   "sat_o_min",      default: "00"
    t.string   "sat_c_min",      default: "00"
    t.string   "sun_o_min",      default: "00"
    t.string   "sun_c_min",      default: "00"
    t.string   "mon_o_meridiem", default: "am"
    t.string   "mon_c_meridiem", default: "pm"
    t.string   "tue_o_meridiem", default: "am"
    t.string   "tue_c_meridiem", default: "pm"
    t.string   "wed_o_meridiem", default: "am"
    t.string   "wed_c_meridiem", default: "pm"
    t.string   "thu_o_meridiem", default: "am"
    t.string   "thu_c_meridiem", default: "pm"
    t.string   "fri_o_meridiem", default: "am"
    t.string   "fri_c_meridiem", default: "pm"
    t.string   "sat_o_meridiem", default: "am"
    t.string   "sat_c_meridiem", default: "pm"
    t.string   "sun_o_meridiem", default: "am"
    t.string   "sun_c_meridiem", default: "pm"
  end

  create_table "maps", force: true do |t|
    t.string   "city"
    t.string   "state"
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "maps", ["slug"], name: "index_maps_on_slug", using: :btree

  create_table "photos", force: true do |t|
    t.integer  "store_id"
    t.integer  "user_id"
    t.text     "photo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "photos", ["store_id"], name: "index_photos_on_store_id", using: :btree
  add_index "photos", ["user_id"], name: "index_photos_on_user_id", using: :btree

  create_table "ratings", force: true do |t|
    t.integer  "store_id"
    t.integer  "user_id"
    t.text     "comment"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: true do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.float    "lat"
    t.float    "lng"
    t.string   "store_type"
    t.string   "password_digest"
    t.integer  "map_id"
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
    t.string   "profile_pic"
    t.string   "slug"
    t.string   "website"
    t.string   "phone"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "password_digest"
    t.string   "profile_pic",       default: "no-profile.png"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.integer  "store_id",          default: 0
    t.string   "location"
    t.boolean  "store_admin",       default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "photos", "stores"
  add_foreign_key "photos", "users"
end
