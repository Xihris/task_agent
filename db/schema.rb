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

ActiveRecord::Schema.define(version: 20171001150752) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.integer  "department_id"
    t.string   "photo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "branches", force: :cascade do |t|
    t.string   "branch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "full_department"
    t.string   "short_department"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "temp_tasks", force: :cascade do |t|
    t.text     "companys"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "author_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "branch_id"
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
    t.integer  "branch_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "role"
    t.string   "password"
    t.string   "photo"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "branch_id"
    t.boolean  "in_out",                 default: true
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
