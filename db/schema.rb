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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121011081048) do

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "areas", ["name"], :name => "index_areas_on_name", :unique => true

  create_table "exams", :force => true do |t|
    t.integer  "area_id"
    t.string   "name"
    t.string   "source"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "time"
  end

  add_index "exams", ["name"], :name => "index_exams_on_name", :unique => true

  create_table "narrations", :force => true do |t|
    t.string   "title"
    t.string   "audio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "base64"
  end

  create_table "pictures", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
    t.text     "base64"
  end

  create_table "questions", :force => true do |t|
    t.integer  "exam_id"
    t.integer  "group_number"
    t.integer  "number"
    t.text     "xml"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "results", :force => true do |t|
    t.string   "user_id_str",    :null => false
    t.integer  "exam_id",        :null => false
    t.integer  "question_id",    :null => false
    t.integer  "user_selection", :null => false
    t.integer  "answer",         :null => false
    t.boolean  "correct"
    t.float    "used_time",      :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "results", ["exam_id"], :name => "index_results_on_exam_id"
  add_index "results", ["question_id"], :name => "index_results_on_question_id"
  add_index "results", ["user_id_str"], :name => "index_results_on_user_id_str"

end
