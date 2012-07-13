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

ActiveRecord::Schema.define(:version => 20120713120518) do

  create_table "albums", :force => true do |t|
    t.string   "name",          :null => false
    t.integer  "collection_id", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id",       :null => false
  end

  create_table "collections", :force => true do |t|
    t.string   "name",                              :null => false
    t.string   "contact_person"
    t.string   "when",                              :null => false
    t.string   "venue"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "collection_id"
    t.boolean  "is_event",       :default => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "user_id",                           :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "content",    :null => false
    t.integer  "user_id",    :null => false
    t.integer  "item_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "kind",        :null => false
    t.text     "description"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.string   "credit"
    t.integer  "album_id",    :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id",     :null => false
  end

end
