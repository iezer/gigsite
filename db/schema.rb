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

ActiveRecord::Schema.define(:version => 20130922220526) do

  create_table "event_translations", :force => true do |t|
    t.integer  "event_id"
    t.string   "locale"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "event_translations", ["event_id"], :name => "index_event_translations_on_event_id"
  add_index "event_translations", ["locale"], :name => "index_event_translations_on_locale"

  create_table "events", :force => true do |t|
    t.string   "name"
    t.integer  "venue_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "info_url"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events_musicians", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "musician_id"
  end

  add_index "events_musicians", ["event_id", "musician_id"], :name => "index_events_musicians_on_event_id_and_musician_id"
  add_index "events_musicians", ["musician_id", "event_id"], :name => "index_events_musicians_on_musician_id_and_event_id"

  create_table "musician_translations", :force => true do |t|
    t.integer  "musician_id"
    t.string   "locale"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "musician_translations", ["locale"], :name => "index_musician_translations_on_locale"
  add_index "musician_translations", ["musician_id"], :name => "index_musician_translations_on_musician_id"

  create_table "musicians", :force => true do |t|
    t.string   "name"
    t.string   "instrument"
    t.string   "url"
    t.boolean  "member"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "venue_translations", :force => true do |t|
    t.integer  "venue_id"
    t.string   "locale"
    t.string   "name"
    t.text     "address"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "venue_translations", ["locale"], :name => "index_venue_translations_on_locale"
  add_index "venue_translations", ["venue_id"], :name => "index_venue_translations_on_venue_id"

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "main_url"
    t.string   "access_url"
    t.float    "geo_x"
    t.float    "geo_y"
    t.integer  "ranking"
    t.text     "description"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "gmaps",       :default => false
  end

end
