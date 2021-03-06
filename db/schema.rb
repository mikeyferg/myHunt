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

ActiveRecord::Schema.define(version: 20151005014636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feeds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.string   "url"
    t.string   "status"
  end

  create_table "identities", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.string   "avatar"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.boolean  "expires"
    t.string   "name"
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "mentions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "product_id"
    t.string   "url"
    t.string   "status"
    t.string   "source"
    t.string   "secret"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "ph_post_id"
    t.string   "ph_post_name"
    t.string   "ph_post_tagline"
    t.string   "ph_post_screenshot_url"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products_users", force: :cascade do |t|
    t.integer "product_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "ph_username"
    t.integer  "ph_user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "ph_image_url"
    t.string   "name"
  end

  add_foreign_key "identities", "users"
end
