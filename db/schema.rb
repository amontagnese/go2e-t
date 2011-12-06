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

ActiveRecord::Schema.define(:version => 20111206060318) do

  create_table "eatvents", :force => true do |t|
    t.string   "creator"
    t.date     "day"
    t.time     "hour"
    t.string   "people"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "where"
  end

  create_table "places", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "tel"
    t.decimal  "price"
    t.string   "days"
    t.string   "hours"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "website"
    t.string   "menu"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
