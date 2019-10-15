# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_15_161321) do

  create_table "engines", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.integer "astronauts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "monthly_weathers", force: :cascade do |t|
    t.string "month"
    t.float "minTemp"
    t.float "maxTemp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orbits", force: :cascade do |t|
    t.string "name"
    t.string "form"
    t.string "height"
    t.integer "engine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["engine_id"], name: "index_orbits_on_engine_id"
  end

  create_table "rockets", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.integer "additional_boosters"
    t.integer "astronauts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rovers", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "purpose"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weathers", force: :cascade do |t|
    t.integer "day"
    t.integer "month"
    t.integer "year"
    t.integer "solstice"
    t.integer "minTemp"
    t.integer "maxTemp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "orbits", "engines"
end
