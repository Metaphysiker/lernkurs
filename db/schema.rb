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

ActiveRecord::Schema.define(version: 2020_05_13_091925) do

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

  create_table "applications", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "street"
    t.string "city"
    t.string "plz"
    t.string "email"
    t.string "telefon"
    t.string "payment"
    t.text "motivation"
    t.text "expectation"
    t.text "education"
    t.text "thoughts"
    t.text "aboutme"
    t.text "food"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "course"
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
    t.string "keywords", default: ""
    t.string "modul", default: ""
    t.string "slug", default: ""
    t.string "topic", default: ""
    t.string "duration", default: ""
    t.string "name_of_picture", default: ""
    t.integer "max_points", default: 0
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

  create_table "home_offers", force: :cascade do |t|
    t.string "species"
    t.string "race"
    t.string "gender"
    t.string "castrated"
    t.string "stable"
    t.text "stable_alt"
    t.date "from_then_on"
    t.boolean "archived", default: false
    t.boolean "rideable"
    t.text "search_field", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "age", default: true
    t.boolean "size", default: true
    t.integer "min_age"
    t.integer "max_age"
    t.integer "min_size"
    t.integer "max_size"
  end

  create_table "home_requests", force: :cascade do |t|
    t.boolean "are_you_owner"
    t.string "owner_firstname"
    t.string "owner_lastname"
    t.string "owner_street"
    t.string "owner_plz"
    t.string "owner_city"
    t.string "owner_phone"
    t.string "owner_email"
    t.boolean "does_owner_agree_with_mediation"
    t.boolean "do_you_own_authority_of_mediation"
    t.string "messenger_firstname"
    t.string "messenger_lastname"
    t.string "messenger_street"
    t.string "messenger_plz"
    t.string "messenger_city"
    t.string "messenger_phone"
    t.string "messenger_mail"
    t.boolean "killing_of_animal_intended"
    t.boolean "killing_of_animal_scheduled"
    t.date "date_of_killing"
    t.string "species"
    t.string "race"
    t.integer "age"
    t.integer "size"
    t.string "color"
    t.string "gender"
    t.string "castrated"
    t.string "current_location"
    t.text "features"
    t.string "stable_owner_firstname"
    t.string "stable_owner_lastname"
    t.string "stable_street"
    t.string "stable_plz"
    t.string "stable_city"
    t.string "stable_phone"
    t.text "how_was_animal_held"
    t.text "how_was_animal_used"
    t.text "reason_of_request"
    t.text "is_animal_healthy"
    t.boolean "privacy_statement"
    t.boolean "archived", default: false
    t.boolean "rideable"
    t.text "search_field", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logic_activities", force: :cascade do |t|
    t.string "exercise", default: ""
    t.string "correctness", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newsletters", force: :cascade do |t|
    t.string "email", default: ""
    t.string "purpose", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.integer "counter1", default: 0
    t.integer "counter2", default: 0
    t.string "answer1", default: ""
    t.string "answer2", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: ""
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
