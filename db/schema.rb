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

ActiveRecord::Schema.define(version: 20170921125818) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.integer  "department_id"
    t.string   "photo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "chat_conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chat_messages", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "text"
    t.integer  "conversation_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["conversation_id"], name: "index_chat_messages_on_conversation_id"
    t.index ["user_id"], name: "index_chat_messages_on_user_id"
  end

  create_table "chat_sessions", force: :cascade do |t|
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["conversation_id"], name: "index_chat_sessions_on_conversation_id"
    t.index ["user_id"], name: "index_chat_sessions_on_user_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "full_department"
    t.string   "short_department"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["name"], name: "index_models_on_name", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "temp_tasks", force: :cascade do |t|
    t.text     "companys"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "author_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "unit"
    t.date     "date_start"
    t.date     "date_end"
    t.date     "date_finish"
    t.integer  "author_id"
    t.integer  "user_id"
    t.boolean  "complete",     default: false
    t.integer  "sum_ur"
    t.integer  "sum_fiz"
    t.integer  "id_temp_task"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.text     "comment"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "role"
    t.string   "password"
    t.string   "photo"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "email"
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "chat_status",            default: "offline"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
