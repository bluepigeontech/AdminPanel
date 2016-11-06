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

ActiveRecord::Schema.define(version: 20161104093711) do

  create_table "approval_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_ammenities", force: :cascade do |t|
    t.string   "name",          null: false
    t.boolean  "status"
    t.string   "ammenity_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "base_stage_sub_stages", force: :cascade do |t|
    t.string   "name"
    t.integer  "order"
    t.integer  "base_stage_id"
    t.float    "percentage"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "base_stages", force: :cascade do |t|
    t.string   "name",         null: false
    t.integer  "order",        null: false
    t.string   "stage_parent"
    t.float    "percentage"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "builder_companies", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "about"
    t.integer  "builder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "builder_company_contact_people", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "email"
    t.text     "phone_number"
    t.integer  "company_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "builders", force: :cascade do |t|
    t.string   "group_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_ammenities", force: :cascade do |t|
    t.integer  "building_id"
    t.integer  "base_ammenity_id"
    t.boolean  "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "building_ammenity_photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_photos", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "building_id"
    t.integer  "file_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "building_stage_sub_stages", force: :cascade do |t|
    t.integer  "stage_id"
    t.integer  "base_sub_stage_id"
    t.float    "percentage"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "building_stages", force: :cascade do |t|
    t.integer  "building_id"
    t.integer  "base_stage_id"
    t.float    "percentage"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string   "name",             null: false
    t.string   "status"
    t.integer  "number_of_floors"
    t.integer  "project_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "buyers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name",       null: false
    t.string   "short_form"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name",       null: false
    t.string   "short_form", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flat_ammenities", force: :cascade do |t|
    t.integer  "flat_id"
    t.integer  "base_ammenity_id"
    t.boolean  "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "flat_ammenity_p_hotos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flat_photos", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "flat_id"
    t.integer  "file_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flat_stage_sub_stages", force: :cascade do |t|
    t.integer  "stage_id"
    t.integer  "base_sub_stage_id"
    t.float    "percentage"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "flat_stages", force: :cascade do |t|
    t.integer  "flat_id"
    t.integer  "base_stage_id"
    t.float    "percentage"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "flats", force: :cascade do |t|
    t.string   "name",               null: false
    t.date     "possession_date"
    t.boolean  "status"
    t.string   "flat_configuration"
    t.text     "saleable_area"
    t.text     "carpet_area"
    t.integer  "floor_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "floor_ammenities", force: :cascade do |t|
    t.integer  "floor_id"
    t.integer  "base_ammenity_id"
    t.boolean  "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "floor_ammenity_photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "floor_photos", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "floor_id"
    t.integer  "file_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "floor_stage_sub_stages", force: :cascade do |t|
    t.integer  "stage_id"
    t.integer  "base_sub_stage_id"
    t.float    "percentage"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "floor_stages", force: :cascade do |t|
    t.integer  "floor_id"
    t.integer  "base_stage_id"
    t.float    "percentage"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "floors", force: :cascade do |t|
    t.string   "name",            null: false
    t.integer  "building_id"
    t.boolean  "status"
    t.integer  "number_of_flats"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "home_loan_banks", force: :cascade do |t|
    t.string   "name",                 null: false
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "locality_id"
    t.text     "address"
    t.string   "contact_person_name"
    t.string   "contact_person_email"
    t.text     "contact_person_phone"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "leads", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localities", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name",       null: false
    t.string   "short_form"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.text     "email"
    t.float    "phone"
    t.boolean  "verified"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "managers", ["email"], name: "index_managers_on_email", unique: true

  create_table "project_ammenities", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "base_ammenity_id"
    t.boolean  "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "project_ammenity_photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_approval_types", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "approval_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "project_photos", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "project_id"
    t.integer  "file_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_stage_sub_stages", force: :cascade do |t|
    t.integer  "stage_id"
    t.integer  "base_sub_stage_id"
    t.float    "percentage"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "project_stages", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "base_stage_id"
    t.float    "percentage"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",                null: false
    t.string   "seller_type"
    t.integer  "builder_id"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "locality_id"
    t.text     "address"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "description"
    t.text     "usp"
    t.date     "launch_date"
    t.integer  "number_of_buildings"
    t.boolean  "status"
    t.string   "project_type"
    t.string   "property_type"
    t.integer  "company_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.text     "access_control_list"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "states", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name",       null: false
    t.string   "short_form"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taxes", force: :cascade do |t|
    t.string   "name",       null: false
    t.float    "percentage", null: false
    t.integer  "state_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
  end

end
