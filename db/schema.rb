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

ActiveRecord::Schema.define(version: 20140521073117) do

  create_table "cms_layouts", force: true do |t|
    t.string   "name"
    t.text     "content",    limit: 2147483647
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_pages", force: true do |t|
    t.string   "name"
    t.string   "route"
    t.string   "title"
    t.text     "keywords"
    t.text     "description"
    t.boolean  "enabled"
    t.boolean  "static"
    t.integer  "layout_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_pages", ["layout_id"], name: "index_cms_pages_on_layout_id", using: :btree
  add_index "cms_pages", ["name"], name: "index_cms_pages_on_name", using: :btree
  add_index "cms_pages", ["route"], name: "index_cms_pages_on_route", unique: true, using: :btree
  add_index "cms_pages", ["title"], name: "index_cms_pages_on_title", using: :btree
  add_index "cms_pages", ["user_id"], name: "index_cms_pages_on_user_id", using: :btree

  create_table "cms_pages_sections", id: false, force: true do |t|
    t.integer "page_id"
    t.integer "section_id"
  end

  add_index "cms_pages_sections", ["page_id", "section_id"], name: "index_cms_pages_sections_on_page_id_and_section_id", using: :btree

  create_table "cms_sections", force: true do |t|
    t.string   "name"
    t.string   "alias"
    t.text     "content",    limit: 16777215
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_sections", ["alias"], name: "index_cms_sections_on_alias", unique: true, using: :btree
  add_index "cms_sections", ["name"], name: "index_cms_sections_on_name", using: :btree

  create_table "cms_templates", force: true do |t|
    t.text     "content",    limit: 2147483647
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_templates", ["page_id"], name: "index_cms_templates_on_page_id", using: :btree

  create_table "cms_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_users", ["email"], name: "index_cms_users_on_email", unique: true, using: :btree
  add_index "cms_users", ["reset_password_token"], name: "index_cms_users_on_reset_password_token", unique: true, using: :btree

end
