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

ActiveRecord::Schema.define(version: 20141008011740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.string "name", null: false
  end

  create_table "shops", force: true do |t|
    t.integer "city_id",                  null: false
    t.string  "name",                     null: false
    t.string  "tagline",     default: ""
    t.string  "seating",     default: ""
    t.string  "now_playing", default: ""
    t.string  "noise_level", default: ""
    t.string  "wifi",        default: ""
    t.string  "bathroom",    default: ""
    t.string  "attire",      default: ""
    t.text    "prose",       default: ""
  end

  add_index "shops", ["city_id"], name: "index_shops_on_city_id", using: :btree

end
