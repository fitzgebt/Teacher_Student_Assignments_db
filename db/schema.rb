# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_02_183250) do

  create_table "assignments", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
  end

  create_table "students_assignments", force: :cascade do |t|
    t.integer "student_id"
    t.integer "assignment_id"
    t.string "grade"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "username"
    t.string "fname"
    t.string "lname"
    t.string "password_digest"
  end

end
