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

ActiveRecord::Schema.define(version: 20180215022216) do

  create_table "art_productions", force: :cascade do |t|
    t.string   "art_production_code"
    t.integer  "color_amount"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "art_refrences", force: :cascade do |t|
    t.integer  "art_color_amount"
    t.string   "art_ref_code"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "decoration_types", force: :cascade do |t|
    t.string   "color"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dimensions", force: :cascade do |t|
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "garments", force: :cascade do |t|
    t.string   "style_code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "garments_locations", force: :cascade do |t|
    t.integer  "garment_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["garment_id"], name: "index_garments_locations_on_garment_id"
    t.index ["location_id"], name: "index_garments_locations_on_location_id"
  end

  create_table "inks", force: :cascade do |t|
    t.string   "color_code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "location_code"
    t.string   "name"
    t.integer  "dimension_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "width"
    t.integer  "height"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
