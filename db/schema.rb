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

ActiveRecord::Schema.define(version: 20150915012912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "casein_admin_users", force: :cascade do |t|
    t.string   "login",                           null: false
    t.string   "name"
    t.string   "email"
    t.integer  "access_level",        default: 0, null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count",         default: 0, null: false
    t.integer  "failed_login_count",  default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "date"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.string   "caption1"
    t.string   "pic1"
    t.string   "cap1"
    t.string   "pic2"
    t.string   "cap2"
    t.string   "pic3"
    t.string   "cap3"
    t.string   "pic4"
    t.string   "cap4"
    t.string   "pic5"
    t.string   "cap5"
    t.string   "pic6"
    t.string   "cap6"
    t.string   "pic7"
    t.string   "cap7"
    t.string   "pic8"
    t.string   "cap8"
    t.string   "pic9"
    t.string   "cap9"
    t.string   "pic10"
    t.string   "cap10"
    t.string   "pic11"
    t.string   "cap11"
    t.string   "pic12"
    t.string   "cap12"
    t.string   "pic13"
    t.string   "cap13"
    t.string   "pic14"
    t.string   "cap14"
    t.string   "pic15"
    t.string   "cap15"
    t.string   "pic16"
    t.string   "cap16"
  end

  create_table "faculties", force: :cascade do |t|
    t.text     "full_name"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

end
