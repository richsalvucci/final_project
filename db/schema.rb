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

ActiveRecord::Schema.define(version: 20140610201530) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "back_tee_rating",    precision: 10, scale: 0
    t.decimal  "middle_tee_rating",  precision: 10, scale: 0
    t.decimal  "front_tee_rating",   precision: 10, scale: 0
    t.decimal  "forward_tee_rating", precision: 10, scale: 0
    t.decimal  "back_tee_slope",     precision: 10, scale: 0
    t.decimal  "middle_tee_slope",   precision: 10, scale: 0
    t.decimal  "front_tee_slope",    precision: 10, scale: 0
    t.decimal  "forward_tee_slope",  precision: 10, scale: 0
  end

  create_table "holes", force: true do |t|
    t.integer  "back_tee_yardage"
    t.integer  "middle_tee_yardage"
    t.integer  "front_tee_yardage"
    t.integer  "forward_tee_yardage"
    t.integer  "par"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mens_handicap"
    t.integer  "womens_handicap"
    t.integer  "hole_number"
  end

  create_table "rounds", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "front_total"
    t.integer  "back_total"
    t.integer  "round_total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tee"
  end

  create_table "scores", force: true do |t|
    t.integer  "round_id"
    t.integer  "user_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_rounds", force: true do |t|
    t.integer  "round_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tee"
    t.string   "user_name"
  end

  create_table "users", force: true do |t|
    t.string   "email",                                           default: "", null: false
    t.string   "encrypted_password",                              default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "provider"
    t.string   "name"
    t.string   "uid"
    t.decimal  "handicap",               precision: 10, scale: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
