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

ActiveRecord::Schema.define(version: 20171108172510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "demands", force: :cascade do |t|
    t.text     "description"
    t.integer  "retrospective_id"
    t.string   "user"
    t.boolean  "status",           default: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.datetime "resolved_at"
    t.integer  "team_id"
    t.index ["retrospective_id"], name: "index_demands_on_retrospective_id", using: :btree
    t.index ["team_id"], name: "index_demands_on_team_id", using: :btree
  end

  create_table "doubts", force: :cascade do |t|
    t.text     "description"
    t.integer  "retrospective_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "team_id"
    t.integer  "like",             default: 0
    t.integer  "dislike",          default: 0
    t.index ["retrospective_id"], name: "index_doubts_on_retrospective_id", using: :btree
    t.index ["team_id"], name: "index_doubts_on_team_id", using: :btree
  end

  create_table "retrospectives", force: :cascade do |t|
    t.string   "title"
    t.datetime "date"
    t.integer  "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time     "schedule"
    t.integer  "team_id"
    t.index ["team_id"], name: "index_retrospectives_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.text     "description"
    t.string   "type"
    t.integer  "retrospective_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "like",             default: 0
    t.integer  "dislike",          default: 0
    t.integer  "team_id"
    t.index ["retrospective_id"], name: "index_topics_on_retrospective_id", using: :btree
    t.index ["team_id"], name: "index_topics_on_team_id", using: :btree
  end

end
