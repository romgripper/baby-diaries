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

ActiveRecord::Schema.define(version: 20160824135308) do

  create_table "babies", force: :cascade do |t|
    t.string   "name"
    t.string   "nick"
    t.date     "birthday"
    t.integer  "birth_height"
    t.integer  "birth_weight"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "babies_parents", id: false, force: :cascade do |t|
    t.integer "parent_id"
    t.integer "baby_id"
    t.index ["baby_id"], name: "index_babies_parents_on_baby_id"
    t.index ["parent_id"], name: "index_babies_parents_on_parent_id"
  end

  create_table "parent_profiles", force: :cascade do |t|
    t.date     "birthday"
    t.string   "gender"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["parent_id"], name: "index_parent_profiles_on_parent_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "records", force: :cascade do |t|
    t.date     "date"
    t.integer  "weight"
    t.integer  "height"
    t.string   "first_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "baby_id"
    t.text     "note"
    t.index ["baby_id"], name: "index_records_on_baby_id"
  end

end
