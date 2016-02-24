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

ActiveRecord::Schema.define(version: 20151209005221) do

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "demos", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "industry",   limit: 255
    t.string   "location",   limit: 255
    t.string   "new",        limit: 255
    t.string   "create",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.date     "event_date"
    t.time     "event_time"
    t.string   "location",    limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "mentor",      limit: 255
    t.integer  "user_id",     limit: 4
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "city",          limit: 255
    t.string   "state",         limit: 255
    t.text     "bio",           limit: 65535
    t.string   "coach_type",    limit: 255
    t.integer  "rating",        limit: 4
    t.integer  "price_low",     limit: 4
    t.integer  "price_high",    limit: 4
    t.string   "language",      limit: 255
    t.string   "certification", limit: 255
    t.string   "skills",        limit: 255
    t.string   "experience",    limit: 255
    t.string   "email",         limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "industry",      limit: 255
    t.integer  "user_id",       limit: 4
    t.string   "leadership",    limit: 255
    t.string   "management",    limit: 255
    t.string   "wellbeing",     limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.integer  "current_sign_in_ip",     limit: 4
    t.integer  "last_sign_in_ip",        limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
