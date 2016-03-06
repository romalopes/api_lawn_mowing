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

ActiveRecord::Schema.define(version: 20160305193704) do

  create_table "lanws", force: :cascade do |t|
    t.integer  "width",      limit: 4
    t.integer  "height",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "mowers", force: :cascade do |t|
    t.integer  "x",          limit: 4
    t.integer  "y",          limit: 4
    t.string   "headings",   limit: 255
    t.string   "commands",   limit: 255
    t.integer  "lawn_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "mowers", ["lawn_id"], name: "index_mowers_on_lawn_id", using: :btree

end
