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

ActiveRecord::Schema.define(version: 2020_10_21_175329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bootcamps", force: :cascade do |t|
    t.string "name"
    t.string "overall_score"
    t.string "curriculum_score"
    t.string "job_support_score"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "cost"
    t.string "duration"
    t.text "locations", default: [], array: true
    t.text "description", default: [], array: true
    t.text "subjects", default: [], array: true
    t.bigint "bootcamp_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "pay_after_grad", default: false
    t.string "percent", default: "0"
    t.string "payments", default: "0"
    t.index ["bootcamp_id"], name: "index_courses_on_bootcamp_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "job_title"
    t.boolean "anonymity"
    t.text "title"
    t.text "comment"
    t.boolean "alum"
    t.text "end_year"
    t.bigint "course_id", null: false
    t.bigint "bootcamp_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bootcamp_id"], name: "index_reviews_on_bootcamp_id"
    t.index ["course_id"], name: "index_reviews_on_course_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_admin", default: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "courses", "bootcamps"
  add_foreign_key "reviews", "bootcamps"
  add_foreign_key "reviews", "courses"
end
