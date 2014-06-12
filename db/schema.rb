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

ActiveRecord::Schema.define(version: 20140612023812) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "attribs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "card_ranks", force: true do |t|
    t.string   "name"
    t.integer  "strength"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "card_suites", force: true do |t|
    t.string   "name"
    t.integer  "strength"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", force: true do |t|
    t.integer  "card_rank_id"
    t.integer  "card_suite_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cards", ["card_rank_id"], name: "index_cards_on_card_rank_id"
  add_index "cards", ["card_suite_id"], name: "index_cards_on_card_suite_id"

  create_table "character_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "exp"
    t.integer  "bennies"
    t.integer  "money"
    t.integer  "ini_cards"
    t.integer  "ini_min_id"
    t.integer  "ini_max_id"
    t.integer  "race_id"
    t.integer  "rank_id"
    t.integer  "character_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characters", ["character_type_id"], name: "index_characters_on_character_type_id"
  add_index "characters", ["race_id"], name: "index_characters_on_race_id"
  add_index "characters", ["rank_id"], name: "index_characters_on_rank_id"

  create_table "characters_attribs", force: true do |t|
    t.integer  "character_id"
    t.integer  "attrib_id"
    t.integer  "dice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characters_attribs", ["attrib_id"], name: "index_characters_attribs_on_attrib_id"
  add_index "characters_attribs", ["character_id"], name: "index_characters_attribs_on_character_id"
  add_index "characters_attribs", ["dice_id"], name: "index_characters_attribs_on_dice_id"

  create_table "characters_edges", id: false, force: true do |t|
    t.integer "character_id", null: false
    t.integer "edge_id",      null: false
  end

  create_table "characters_hindrances", id: false, force: true do |t|
    t.integer "character_id", null: false
    t.integer "hindrance_id", null: false
  end

  create_table "characters_powers", id: false, force: true do |t|
    t.integer "character_id", null: false
    t.integer "power_id",     null: false
  end

  create_table "characters_skills", force: true do |t|
    t.integer  "character_id"
    t.integer  "skill_id"
    t.integer  "dice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characters_skills", ["character_id"], name: "index_characters_skills_on_character_id"
  add_index "characters_skills", ["dice_id"], name: "index_characters_skills_on_dice_id"
  add_index "characters_skills", ["skill_id"], name: "index_characters_skills_on_skill_id"

  create_table "dices", force: true do |t|
    t.integer  "number"
    t.integer  "plus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "edge_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "edges", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "edge_type_id"
    t.integer  "rank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "edges", ["edge_type_id"], name: "index_edges_on_edge_type_id"
  add_index "edges", ["rank_id"], name: "index_edges_on_rank_id"

  create_table "hindrance_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hindrances", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "hindrance_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hindrances", ["hindrance_type_id"], name: "index_hindrances_on_hindrance_type_id"

  create_table "power_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "powers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cost"
    t.string   "range"
    t.string   "duration"
    t.integer  "power_type_id"
    t.integer  "rank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "powers", ["power_type_id"], name: "index_powers_on_power_type_id"
  add_index "powers", ["rank_id"], name: "index_powers_on_rank_id"

  create_table "races", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ranks", force: true do |t|
    t.string   "name"
    t.integer  "min_exp"
    t.integer  "max_exp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.integer  "attrib_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["attrib_id"], name: "index_skills_on_attrib_id"

end
