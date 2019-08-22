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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accesstokens", id: :serial, force: :cascade do |t|
    t.string "token", limit: 255, null: false
    t.integer "user_id", null: false
    t.integer "client_id", null: false
    t.bigint "expires", null: false
    t.index ["token"], name: "accesstokens_token_unique", unique: true
  end

  create_table "app_fields", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "key", limit: 150, null: false
    t.text "value"
    t.string "type", limit: 150, default: "html", null: false
    t.integer "app_id", null: false
    t.integer "relatable_id", null: false
    t.string "relatable_type", limit: 150, default: "posts", null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
  end

  create_table "app_settings", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "key", limit: 150, null: false
    t.text "value"
    t.integer "app_id", null: false
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
    t.index ["key"], name: "app_settings_key_unique", unique: true
  end

  create_table "apps", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "name", limit: 150, null: false
    t.string "slug", limit: 150, null: false
    t.string "version", limit: 150, null: false
    t.string "status", limit: 150, default: "inactive", null: false
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
    t.index ["name"], name: "apps_name_unique", unique: true
    t.index ["slug"], name: "apps_slug_unique", unique: true
  end

  create_table "client_trusted_domains", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.integer "client_id", null: false
    t.string "trusted_domain", limit: 2000
  end

  create_table "clients", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "name", limit: 150, null: false
    t.string "slug", limit: 150, null: false
    t.string "secret", limit: 150, null: false
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
    t.string "redirection_uri", limit: 2000
    t.string "logo", limit: 2000
    t.string "status", limit: 150, default: "development", null: false
    t.string "type", limit: 150, default: "ua", null: false
    t.string "description", limit: 200
    t.index ["name"], name: "clients_name_unique", unique: true
    t.index ["slug"], name: "clients_slug_unique", unique: true
  end

  create_table "permissions", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "name", limit: 150, null: false
    t.string "object_type", limit: 150, null: false
    t.string "action_type", limit: 150, null: false
    t.integer "object_id"
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
  end

  create_table "permissions_apps", id: :serial, force: :cascade do |t|
    t.integer "app_id", null: false
    t.integer "permission_id", null: false
  end

  create_table "permissions_roles", id: :serial, force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "permission_id", null: false
  end

  create_table "permissions_users", id: :serial, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "permission_id", null: false
  end

  create_table "posts", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "title", limit: 150, null: false
    t.string "slug", limit: 150, null: false
    t.text "markdown"
    t.text "html"
    t.text "image"
    t.boolean "featured", default: false, null: false
    t.boolean "page", default: false, null: false
    t.string "status", limit: 150, default: "draft", null: false
    t.string "language", limit: 6, default: "en_US", null: false
    t.string "meta_title", limit: 150
    t.string "meta_description", limit: 200
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
    t.datetime "published_at"
    t.integer "published_by"
    t.string "visibility", limit: 150, default: "public", null: false
    t.text "mobiledoc"
    t.text "amp"
    t.index ["slug"], name: "posts_slug_unique", unique: true
  end

  create_table "posts_tags", id: :serial, force: :cascade do |t|
    t.integer "post_id", null: false
    t.integer "tag_id", null: false
    t.integer "sort_order", default: 0, null: false
  end

  create_table "refreshtokens", id: :serial, force: :cascade do |t|
    t.string "token", limit: 255, null: false
    t.integer "user_id", null: false
    t.integer "client_id", null: false
    t.bigint "expires", null: false
    t.index ["token"], name: "refreshtokens_token_unique", unique: true
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "name", limit: 150, null: false
    t.string "description", limit: 200
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
  end

  create_table "roles_users", id: :serial, force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "user_id", null: false
  end

  create_table "settings", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "key", limit: 150, null: false
    t.text "value"
    t.string "type", limit: 150, default: "core", null: false
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
    t.index ["key"], name: "settings_key_unique", unique: true
  end

  create_table "subscribers", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "name", limit: 150
    t.string "email", limit: 254, null: false
    t.string "status", limit: 150, default: "pending", null: false
    t.integer "post_id"
    t.text "subscribed_url"
    t.text "subscribed_referrer"
    t.text "unsubscribed_url"
    t.datetime "unsubscribed_at"
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
    t.index ["email"], name: "subscribers_email_unique", unique: true
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "name", limit: 150, null: false
    t.string "slug", limit: 150, null: false
    t.string "description", limit: 200
    t.text "image"
    t.integer "parent_id"
    t.string "meta_title", limit: 150
    t.string "meta_description", limit: 200
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
    t.string "visibility", limit: 150, default: "public", null: false
    t.index ["slug"], name: "tags_slug_unique", unique: true
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "uuid", limit: 36, null: false
    t.string "name", limit: 150, null: false
    t.string "slug", limit: 150, null: false
    t.string "password", limit: 60, null: false
    t.string "email", limit: 254, null: false
    t.text "image"
    t.text "cover"
    t.string "bio", limit: 200
    t.text "website"
    t.text "location"
    t.text "accessibility"
    t.string "status", limit: 150, default: "active", null: false
    t.string "language", limit: 6, default: "en_US", null: false
    t.string "meta_title", limit: 150
    t.string "meta_description", limit: 200
    t.datetime "last_login"
    t.datetime "created_at", null: false
    t.integer "created_by", null: false
    t.datetime "updated_at"
    t.integer "updated_by"
    t.text "tour"
    t.string "visibility", limit: 150, default: "public", null: false
    t.text "facebook"
    t.text "twitter"
    t.index ["email"], name: "users_email_unique", unique: true
    t.index ["slug"], name: "users_slug_unique", unique: true
  end

  add_foreign_key "accesstokens", "clients", name: "accesstokens_client_id_foreign"
  add_foreign_key "accesstokens", "users", name: "accesstokens_user_id_foreign"
  add_foreign_key "app_fields", "apps", name: "app_fields_app_id_foreign"
  add_foreign_key "app_settings", "apps", name: "app_settings_app_id_foreign"
  add_foreign_key "client_trusted_domains", "clients", name: "client_trusted_domains_client_id_foreign"
  add_foreign_key "posts_tags", "posts", name: "posts_tags_post_id_foreign"
  add_foreign_key "posts_tags", "tags", name: "posts_tags_tag_id_foreign"
  add_foreign_key "refreshtokens", "clients", name: "refreshtokens_client_id_foreign"
  add_foreign_key "refreshtokens", "users", name: "refreshtokens_user_id_foreign"
  add_foreign_key "subscribers", "posts", name: "subscribers_post_id_foreign"
end
