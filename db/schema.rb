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

ActiveRecord::Schema.define(version: 20180423175005) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actual_action_plans", force: :cascade do |t|
    t.integer  "assessment_id"
    t.integer  "possible_action_plan_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "actual_answers", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "possible_answer_id"
    t.integer  "assessment_id"
    t.string   "answer_text"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "assessments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "possible_action_plans", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "possible_answer_id"
    t.string   "plan_text"
    t.integer  "order"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "possible_answers", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "order"
    t.string   "answer_text"
    t.string   "boolean"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question_text"
    t.boolean  "is_first"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routings", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "next_question_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "possible_answer_id"
  end

end
