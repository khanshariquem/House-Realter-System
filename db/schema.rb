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

ActiveRecord::Schema.define(version: 2018_10_06_012347) do

  create_table "buyers", force: :cascade do |t|
    t.integer "house_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_buyers_on_house_id"
    t.index ["user_id"], name: "index_buyers_on_user_id"
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
    t.integer "user_id"
    t.string "location"
    t.integer "size"
    t.integer "year"
    t.string "style"
    t.integer "price"
    t.integer "floors"
    t.boolean "basement"
    t.string "owner"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["company_id"], name: "index_houses_on_company_id"
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "house_id"
    t.string "subject"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_inquiries_on_house_id"
    t.index ["user_id"], name: "index_inquiries_on_user_id"
  end

  create_table "replies", force: :cascade do |t|
    t.integer "user_id"
    t.integer "inquiry_id"
    t.string "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inquiry_id"], name: "index_replies_on_inquiry_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "min_size"
    t.integer "max_size"
    t.integer "min_cost"
    t.integer "max_cost"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "is_admin"
    t.boolean "is_realtor"
    t.boolean "is_hunter"
    t.string "fname"
    t.string "contact"
    t.string "contact_mode"
    t.integer "company_id"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "provider"
    t.string "uid"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
