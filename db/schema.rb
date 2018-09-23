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

ActiveRecord::Schema.define(version: 2018_09_23_204847) do

  create_table "buyers", force: :cascade do |t|
    t.integer "house_id"
    t.integer "hunter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_buyers_on_house_id"
    t.index ["hunter_id"], name: "index_buyers_on_hunter_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "c_name"
    t.string "website"
    t.string "address"
    t.integer "size"
    t.integer "year"
    t.integer "revenue"
    t.string "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.integer "company_id"
    t.string "location"
    t.float "size"
    t.integer "year"
    t.string "style"
    t.integer "price"
    t.integer "floors"
    t.boolean "basement"
    t.string "owner"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_houses_on_company_id"
  end

  create_table "hunters", force: :cascade do |t|
    t.integer "user_id"
    t.string "contact_mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_hunters_on_user_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.integer "hunter_id"
    t.string "house_belongs_to"
    t.string "query"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hunter_id"], name: "index_inquiries_on_hunter_id"
  end

  create_table "realtors", force: :cascade do |t|
    t.integer "user_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_realtors_on_company_id"
    t.index ["user_id"], name: "index_realtors_on_user_id"
  end

  create_table "replies", force: :cascade do |t|
    t.integer "realtor_id"
    t.integer "inquiry_id"
    t.string "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inquiry_id"], name: "index_replies_on_inquiry_id"
    t.index ["realtor_id"], name: "index_replies_on_realtor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
