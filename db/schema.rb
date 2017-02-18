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

ActiveRecord::Schema.define(version: 20170218142015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.integer  "bays"
    t.integer  "offices"
    t.integer  "rest_room"
    t.integer  "telephone_room"
    t.string   "class_room"
    t.bit      "residential_quaters", limit: 1
    t.integer  "firestation_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["firestation_id"], name: "index_buildings_on_firestation_id", using: :btree
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.integer  "rrange_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rrange_id"], name: "index_districts_on_rrange_id", using: :btree
  end

  create_table "firestations", force: :cascade do |t|
    t.string   "name"
    t.string   "government_sanction_number"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "phone_no"
    t.string   "class_of_fire_station"
    t.date     "date_of_establishment"
    t.integer  "cost_of_establishment"
    t.integer  "sanctioned_strength"
    t.integer  "actual_strength"
    t.string   "taluk_bit"
    t.integer  "status"
    t.integer  "hobli_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["hobli_id"], name: "index_firestations_on_hobli_id", using: :btree
  end

  create_table "hoblis", force: :cascade do |t|
    t.string   "name"
    t.integer  "taluk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["taluk_id"], name: "index_hoblis_on_taluk_id", using: :btree
  end

  create_table "houses", force: :cascade do |t|
    t.string   "house_no"
    t.integer  "no_of_bhk"
    t.string   "designation"
    t.bit      "status",      limit: 1
    t.integer  "building_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["building_id"], name: "index_houses_on_building_id", using: :btree
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.integer  "zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zone_id"], name: "index_regions_on_zone_id", using: :btree
  end

  create_table "rranges", force: :cascade do |t|
    t.string   "name"
    t.integer  "zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zone_id"], name: "index_rranges_on_zone_id", using: :btree
  end

  create_table "taluks", force: :cascade do |t|
    t.string   "name"
    t.integer  "district_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["district_id"], name: "index_taluks_on_district_id", using: :btree
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "registration_no"
    t.string   "make"
    t.string   "model"
    t.integer  "year_of_manufacture"
    t.integer  "cost"
    t.date     "date_of_purchase"
    t.string   "chassis_no"
    t.string   "engine_no"
    t.integer  "fuel_capacity"
    t.string   "fabricator"
    t.string   "type"
    t.string   "tax_card"
    t.string   "sanction_order_no"
    t.date     "sanction_date"
    t.integer  "proposed_mileage"
    t.integer  "actual_mileage"
    t.integer  "kilometers_run"
    t.integer  "total_fuel_consumed"
    t.integer  "firestation_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["firestation_id"], name: "index_vehicles_on_firestation_id", using: :btree
  end

  create_table "zones", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "buildings", "firestations"
  add_foreign_key "districts", "rranges"
  add_foreign_key "firestations", "hoblis"
  add_foreign_key "hoblis", "taluks"
  add_foreign_key "houses", "buildings"
  add_foreign_key "regions", "zones"
  add_foreign_key "rranges", "zones"
  add_foreign_key "taluks", "districts"
  add_foreign_key "vehicles", "firestations"
end
