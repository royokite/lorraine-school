# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_06_212655) do
  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.integer "course_yr"
    t.string "course_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "gender"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "course_id"
    t.integer "instructor_id"
    t.integer "subject_id"
    t.integer "student_id"
    t.string "day"
    t.time "time_start"
    t.time "time_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "age"
    t.integer "contact"
    t.string "gender"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "sub_name"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "trans_name"
    t.integer "stud_id"
    t.date "trans_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
