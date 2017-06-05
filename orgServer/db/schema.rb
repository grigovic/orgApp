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

ActiveRecord::Schema.define(version: 20170605080433) do

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "last_name"
    t.string   "position"
    t.string   "type"
    t.integer  "manager_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.index ["manager_id"], name: "index_employees_on_manager_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "manager_id"
    t.integer  "employee"
    t.index ["manager_id"], name: "index_reports_on_manager_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "text"
    t.datetime "due_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
    t.integer  "manager_id"
    t.index ["employee_id"], name: "index_tasks_on_employee_id"
  end

end
