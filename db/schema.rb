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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120707063349) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.integer  "venue_id"
    t.datetime "start"
    t.datetime "end"
    t.string   "info_url"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "musicians", :force => true do |t|
    t.string   "name"
    t.string   "instrument"
    t.string   "url"
    t.boolean  "member"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "performers", :force => true do |t|
    t.integer  "event_id"
    t.integer  "musician_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "main_url"
    t.string   "access_url"
    t.float    "geo_x"
    t.float    "geo_y"
    t.integer  "ranking"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
