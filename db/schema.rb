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

ActiveRecord::Schema.define(version: 2021_08_08_172328) do

  create_table "addresses", force: :cascade do |t|
    t.string "country"
    t.string "state"
    t.string "lga"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "get_accesses", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.integer "phne"
    t.string "work_place"
    t.string "website"
    t.string "work_vertical"
    t.string "use_case"
    t.string "use_region"
    t.integer "monthly"
    t.boolean "approval"
    t.boolean "early_access"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
