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

ActiveRecord::Schema.define(version: 20140904152511) do

  create_table "apartments", force: true do |t|
    t.string   "code"
    t.string   "address"
    t.integer  "state_id"
    t.string   "room"
    t.string   "cost"
    t.string   "amenities"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "doctypes", force: true do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ipqrs", force: true do |t|
    t.string   "name"
    t.string   "mail"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.string   "aptocode"
    t.string   "name"
    t.integer  "doctype_id"
    t.string   "doc"
    t.string   "mail"
    t.date     "reservaciondatein"
    t.date     "reservationdateout"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "apartment_id"
  end

  add_index "reservations", ["doctype_id"], name: "index_reservations_on_doctype_id"

# Could not dump table "sitios" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "states", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
