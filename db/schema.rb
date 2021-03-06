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

ActiveRecord::Schema.define(version: 20160803151256) do

  create_table "lineups", force: :cascade do |t|
    t.integer  "partido_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pos1"
    t.integer  "pos2"
    t.integer  "pos3"
    t.integer  "pos4"
    t.integer  "pos5"
    t.integer  "pos6"
    t.integer  "pos7"
    t.integer  "pos8"
    t.integer  "pos9"
    t.integer  "pos10"
    t.integer  "pos11"
    t.integer  "pos12"
    t.integer  "pos13"
    t.integer  "pos14"
    t.integer  "pos15"
    t.integer  "pos16"
    t.integer  "pos17"
    t.integer  "pos18"
    t.integer  "pos19"
    t.integer  "pos20"
    t.integer  "pos21"
    t.integer  "pos22"
    t.integer  "pos23"
    t.index ["partido_id"], name: "index_lineups_on_partido_id"
  end

  create_table "lineups_players", force: :cascade do |t|
    t.integer "lineup_id"
    t.integer "player_id"
    t.index ["lineup_id"], name: "index_lineups_players_on_lineup_id"
    t.index ["player_id"], name: "index_lineups_players_on_player_id"
  end

  create_table "partidos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "opponent"
    t.date     "date"
    t.time     "time"
  end

  create_table "player_lists", force: :cascade do |t|
    t.integer  "partido_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partido_id"], name: "index_player_lists_on_partido_id"
  end

  create_table "player_lists_players", force: :cascade do |t|
    t.integer "player_list_id"
    t.integer "player_id"
    t.index ["player_id"], name: "index_player_lists_players_on_player_id"
    t.index ["player_list_id"], name: "index_player_lists_players_on_player_list_id"
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "lastname1"
    t.string   "lastname2"
    t.integer  "position"
    t.date     "birthdate"
    t.integer  "user_id"
    t.string   "categry"
    t.string   "nick_name"
    t.string   "category"
    t.string   "avatar"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "tipo_usuario"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
