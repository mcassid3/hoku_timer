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

ActiveRecord::Schema.define(version: 20170925184324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.integer  "runner_id",         null: false
    t.integer  "leg_id",            null: false
    t.string   "start_time_actual"
    t.string   "end_time_actual"
    t.string   "completion_time"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "legs", force: :cascade do |t|
    t.string   "start_location"
    t.string   "end_location"
    t.float    "distance"
    t.string   "difficulty"
    t.string   "map_link"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "runners", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "predicted_pace"
    t.integer  "team_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name",    null: false
    t.string   "division"
    t.string   "average_pace"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "elapsed_time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
