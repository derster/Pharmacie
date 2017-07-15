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

ActiveRecord::Schema.define(version: 20170715113250) do

  create_table "gardes", force: :cascade do |t|
    t.datetime "star_date"
    t.datetime "end_date"
    t.integer  "Pharm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Pharm_id"], name: "index_gardes_on_Pharm_id"
  end

  create_table "pharms", force: :cascade do |t|
    t.string   "commune"
    t.string   "pharma_name"
    t.string   "owner_name"
    t.string   "sub_owner_name"
    t.text     "description"
    t.string   "tel"
    t.string   "adresse"
    t.string   "lat"
    t.string   "long"
    t.string   "h_openning"
    t.string   "h_closing"
    t.text     "speciality"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
  end

  create_table "towns", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "firt_name",              default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
