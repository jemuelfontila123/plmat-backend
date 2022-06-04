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
    t.bigint "questions_id"
    t.string "text"
    t.boolean "correct_answer", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questions_id"], name: "index_choices_on_questions_id"
  end

  create_table "exam_results", force: :cascade do |t|
    t.integer "math_score"
    t.integer "science_score"
    t.integer "english_score"
    t.integer "filipino_score"
    t.integer "abstract_score"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.integer "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_time"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "questionnaires_id"
    t.string "text"
    t.integer "difficulty"
    t.string "subcategory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questionnaires_id"], name: "index_questions_on_questionnaires_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "exam_results_id"
    t.integer "role"
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.integer "current_exam"
    t.boolean "finished_exam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_results_id"], name: "index_users_on_exam_results_id"
  end

  add_foreign_key "choices", "questions", column: "questions_id"
end
