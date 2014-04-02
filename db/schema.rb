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

ActiveRecord::Schema.define(version: 20140402001258) do

  create_table "eatables", force: true do |t|
    t.integer  "food_id"
    t.integer  "location_id"
    t.text     "month_ids"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eatables_months", force: true do |t|
    t.integer "eatable_id"
    t.integer "month_id"
  end

  create_table "foods", force: true do |t|
    t.string   "title"
    t.string   "image"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "months", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
