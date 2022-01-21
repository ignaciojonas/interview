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

ActiveRecord::Schema.define(version: 2022_01_21_145134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "check_ins", force: :cascade do |t|
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.json "answers"
    t.bigint "screener_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["screener_id"], name: "index_options_on_screener_id"
  end

  create_table "patients", force: :cascade do |t|
    t.date "birthdate"
    t.string "patient_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screeners", force: :cascade do |t|
    t.string "name"
    t.text "question"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "options", "screeners"
end
