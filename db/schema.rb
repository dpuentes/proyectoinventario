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

ActiveRecord::Schema.define(version: 2020_07_01_031725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analysts", force: :cascade do |t|
    t.text "analyst_name"
    t.integer "identification"
    t.integer "city_ID"
    t.text "address"
    t.integer "phone"
    t.text "personal_mail"
    t.text "work_mail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_analysts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_analysts_on_reset_password_token", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.text "name_city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "commentaries", force: :cascade do |t|
    t.text "content_comment"
    t.date "date_comment"
    t.integer "analyst_ID"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dependences", force: :cascade do |t|
    t.text "dependence_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.text "serial"
    t.integer "maker_ID"
    t.text "model"
    t.integer "group_ID"
    t.date "date_of_purchase"
    t.date "date_of_output"
    t.money "value", scale: 2
    t.integer "time_of_warranty"
    t.integer "provider_ID"
    t.macaddr "mac_wireless"
    t.inet "ip_wlan"
    t.macaddr "mac_ethernet"
    t.inet "ip_lan"
    t.text "oprating_system"
    t.text "processor"
    t.text "hdd"
    t.text "ram"
    t.integer "dependence_ID"
    t.integer "analyst_ID"
    t.integer "status"
    t.integer "condition"
    t.integer "city_ID"
    t.integer "commentary_ID"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "extensions", force: :cascade do |t|
    t.integer "number_extension"
    t.text "sip_password"
    t.integer "analyst_ID"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups", force: :cascade do |t|
    t.text "group_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "makers", force: :cascade do |t|
    t.text "makername"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "providers", force: :cascade do |t|
    t.text "name_provider"
    t.integer "city_Id"
    t.text "contact_name"
    t.text "contact_phone"
    t.text "mail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "remotes", force: :cascade do |t|
    t.text "remote_alias"
    t.integer "equipmen_ID"
    t.text "remote_password"
    t.integer "analyst_ID"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
