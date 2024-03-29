# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_03_24_153832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.integer "starting_price"
    t.string "vehicle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "company_destinations", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "company_id"
    t.bigint "destination_id"
    t.integer "price"
    t.float "time"
    t.float "distance"
    t.integer "next_bookable_flight"
    t.string "flight_name"
    t.string "vehicle"
    t.index ["company_id"], name: "index_company_destinations_on_company_id"
    t.index ["destination_id"], name: "index_company_destinations_on_destination_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.integer "date"
    t.boolean "newsletter"
    t.boolean "pptc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "company_destination_id"
    t.index ["company_destination_id"], name: "index_leads_on_company_destination_id"
  end

  add_foreign_key "company_destinations", "companies"
  add_foreign_key "company_destinations", "destinations"
  add_foreign_key "leads", "company_destinations"
end
