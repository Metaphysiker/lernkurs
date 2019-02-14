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

ActiveRecord::Schema.define(version: 2019_01_27_185318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer "current_course_id"
    t.string "firstname", default: ""
    t.string "code", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attendances", force: :cascade do |t|
    t.bigint "account_id"
    t.bigint "course_id"
    t.integer "current_slide", default: 0
    t.string "status", default: ""
    t.text "progress", default: [], array: true
    t.string "orden", default: ""
    t.string "result1", default: ""
    t.string "result2", default: ""
    t.string "result3", default: ""
    t.string "result4", default: ""
    t.string "result5", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.hstore "exercises", default: {}
    t.index ["account_id"], name: "index_attendances_on_account_id"
    t.index ["course_id"], name: "index_attendances_on_course_id"
    t.index ["exercises"], name: "index_attendances_on_exercises", using: :gin
  end

  create_table "courses", force: :cascade do |t|
    t.string "title", default: ""
    t.string "language", default: ""
    t.text "description", default: ""
    t.string "modul", default: ""
    t.string "slug", default: ""
    t.string "topic", default: ""
    t.string "duration", default: ""
    t.string "name_of_picture", default: ""
    t.integer "order"
    t.text "slides", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

end
