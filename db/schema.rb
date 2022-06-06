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

ActiveRecord::Schema[7.0].define(version: 2022_06_04_141554) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.string "text"
    t.boolean "correct_answer", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exam_results", force: :cascade do |t|
    t.integer "math_score", default: 0
    t.integer "science_score", default: 0
    t.integer "english_score", default: 0
    t.integer "filipino_score", default: 0
    t.integer "abstract_score", default: 0
    t.bigint "user_id"
    t.index ["user_id"], name: "index_exam_results_on_user_id"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.integer "subject"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_time"
  end

  create_table "questions", force: :cascade do |t|
    t.string "text"
    t.integer "difficulty"
    t.string "subcategory"
    t.text "choices", default: [], array: true
    t.string "correct_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "questionnaire_id"
    t.index ["questionnaire_id"], name: "index_questions_on_questionnaire_id"
  end

  create_table "records", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "questionnaire_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questionnaire_id"], name: "index_records_on_questionnaire_id"
    t.index ["user_id"], name: "index_records_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "role"
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.integer "current_exam", default: 0
    t.boolean "finished_exam", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "exam_results", "users"
  add_foreign_key "questions", "questionnaires"
  add_foreign_key "records", "questionnaires"
  add_foreign_key "records", "users"
end
