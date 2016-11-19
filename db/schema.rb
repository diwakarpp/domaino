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

ActiveRecord::Schema.define(version: 20161030202727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checks", force: :cascade do |t|
    t.integer  "domain_id",                          null: false
    t.integer  "kind",                               null: false
    t.datetime "last_scan_requested_at"
    t.datetime "last_scan_at"
    t.integer  "status",                 default: 0, null: false
    t.date     "expiration"
    t.string   "error_message"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["domain_id"], name: "index_checks_on_domain_id", using: :btree
  end

  create_table "domains", force: :cascade do |t|
    t.integer  "portal_id",  null: false
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["portal_id"], name: "index_domains_on_portal_id", using: :btree
  end

  create_table "portals", force: :cascade do |t|
    t.string   "plan"
    t.string   "email"
    t.string   "heroku_uuid"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "settings", force: :cascade do |t|
    t.integer  "portal_id"
    t.string   "sms_recepient"
    t.string   "additional_emails"
    t.text     "human_intelligence"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
