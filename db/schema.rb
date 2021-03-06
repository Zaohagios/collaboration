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

ActiveRecord::Schema.define(version: 20160211085312) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "board"
    t.string   "subject"
    t.text     "body"
    t.boolean  "status"
    t.datetime "due_date"
    t.integer  "level"
    t.integer  "comments"
    t.integer  "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "owner"
  end

  create_table "board_names", force: :cascade do |t|
    t.string   "name"
    t.integer  "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boards", force: :cascade do |t|
    t.string   "name"
    t.integer  "group"
    t.integer  "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "assignment"
    t.integer  "owner"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.integer  "user"
    t.integer  "board"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standard_works", force: :cascade do |t|
    t.string   "subject"
    t.integer  "board"
    t.time     "start_time"
    t.time     "due_time"
    t.boolean  "sun"
    t.boolean  "mon"
    t.boolean  "tue"
    t.boolean  "wed"
    t.boolean  "thu"
    t.boolean  "fri"
    t.boolean  "sat"
    t.integer  "level"
    t.integer  "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "night"
    t.boolean  "day"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "name"
    t.text     "bio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "admin"
  end

  create_table "washes", force: :cascade do |t|
    t.integer  "completed_by"
    t.string   "title"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "board"
    t.text     "comment"
  end

end
