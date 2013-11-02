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

ActiveRecord::Schema.define(version: 20131101212007) do

  create_table "assignments", force: true do |t|
    t.integer  "city_id"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["city_id"], name: "index_assignments_on_city_id"
  add_index "assignments", ["league_id"], name: "index_assignments_on_league_id"

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "sportsness"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  create_table "leagues", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stadia", force: true do |t|
    t.integer  "city_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stadia", ["city_id"], name: "index_stadia_on_city_id"

end
