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

ActiveRecord::Schema.define(version: 20151030001631) do

  create_table "timeclocks", force: :cascade do |t|
    t.date     "date"
    t.time     "time_in"
    t.time     "time_out_lunch"
    t.time     "time_in_lunch"
    t.time     "time_out"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "employee_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.float    "hourly_rate"
    t.string   "username"
    t.string   "password_digest"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
