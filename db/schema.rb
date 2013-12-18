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

ActiveRecord::Schema.define(:version => 20131218114725) do

  create_table "drivers", :force => true do |t|
    t.string   "username"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "driver_id"
    t.decimal  "lat",                :precision => 10, :scale => 6
    t.decimal  "lng",                :precision => 10, :scale => 6
    t.datetime "rickshaw_server_ts"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "stops", :force => true do |t|
    t.integer  "driver_id"
    t.string   "job_status"
    t.string   "scheduled_status"
    t.datetime "scheduled_datetime"
    t.string   "stop_contact_name"
    t.string   "stop_address"
    t.string   "client_name"
    t.string   "stop_type"
    t.string   "rickshaw_foreign_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.float    "latitude"
    t.float    "longitude"
  end

end
