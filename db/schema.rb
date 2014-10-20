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

ActiveRecord::Schema.define(version: 20141001093930) do

  create_table "businesses", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "website"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "businesses", ["user_id"], name: "index_businesses_on_user_id"

  create_table "testimonials", force: true do |t|
    t.string   "content"
    t.integer  "star_rating"
    t.integer  "user_id"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "testimonials", ["business_id"], name: "index_testimonials_on_business_id"
  add_index "testimonials", ["user_id"], name: "index_testimonials_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
