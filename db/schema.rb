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

ActiveRecord::Schema.define(version: 20150407184018) do

  create_table "institutions", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "email"
    t.integer  "institution_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.integer  "genre"
    t.string   "status"
    t.integer  "category"
    t.decimal  "investiment",         default: 0.0
    t.decimal  "total_costs",         default: 0.0
    t.decimal  "total_2015_costs",    default: 0.0
    t.decimal  "transfer_2015_costs", default: 0.0
    t.decimal  "grade",               default: 0.0
    t.integer  "institution_id"
    t.integer  "manager_id"
    t.integer  "sub_theme_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "sub_themes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "theme_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
