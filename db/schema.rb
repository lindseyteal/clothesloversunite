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

ActiveRecord::Schema.define(version: 20180508063425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clothing_sizes", force: :cascade do |t|
    t.bigint "gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "clothing_size"
    t.index ["gender_id"], name: "index_clothing_sizes_on_gender_id"
  end

  create_table "clothing_types", force: :cascade do |t|
    t.string "clothing_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clothings", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "description"
    t.bigint "clothing_type_id"
    t.bigint "gender_id"
    t.bigint "clothing_size_id"
    t.integer "item_price"
    t.integer "postage_price"
    t.text "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clothing_size_id"], name: "index_clothings_on_clothing_size_id"
    t.index ["clothing_type_id"], name: "index_clothings_on_clothing_type_id"
    t.index ["gender_id"], name: "index_clothings_on_gender_id"
    t.index ["user_id"], name: "index_clothings_on_user_id"
  end

  create_table "genders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "suburb"
    t.string "postcode"
    t.string "state"
    t.boolean "buyer"
    t.boolean "seller"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clothing_sizes", "genders"
  add_foreign_key "clothings", "clothing_sizes"
  add_foreign_key "clothings", "clothing_types"
  add_foreign_key "clothings", "genders"
  add_foreign_key "clothings", "users"
  add_foreign_key "profiles", "users"
end
