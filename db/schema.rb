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

ActiveRecord::Schema.define(version: 20150507093047) do

  create_table "appliances", force: true do |t|
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "image"
  end

  create_table "colors", force: true do |t|
    t.integer  "red"
    t.integer  "green"
    t.integer  "blue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leds", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "integer"
  end

  create_table "lights", force: true do |t|
    t.integer  "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
