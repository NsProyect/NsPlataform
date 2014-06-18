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

ActiveRecord::Schema.define(version: 20140618043520) do

  create_table "charges", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactos", force: true do |t|
    t.string   "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doc_types", force: true do |t|
    t.string   "abbrev"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "lastName"
    t.string   "doc"
    t.integer  "charge_id"
    t.string   "password"
    t.string   "mail"
    t.string   "nickName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["charge_id"], name: "index_employees_on_charge_id"

  create_table "estados", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galeria", force: true do |t|
    t.string   "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "inicios" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "mas_informacions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservas", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.date     "fecha_ingreso"
    t.date     "fecha_salida"
    t.string   "apartamento"
    t.string   "hostal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.string   "aptcode"
    t.string   "name"
    t.integer  "doctype_id"
    t.string   "doc"
    t.date     "reservationDate"
    t.string   "mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["doctype_id"], name: "index_reservations_on_doctype_id"

  create_table "sitios", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "direccion"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
