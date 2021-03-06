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

ActiveRecord::Schema.define(:version => 20120902211321) do

  create_table "appointments", :force => true do |t|
    t.integer  "vet_id"
    t.integer  "pet_id"
    t.string   "type_of_pet"
    t.datetime "date_of_visit"
    t.integer  "owner_id"
  end

  create_table "pets", :force => true do |t|
    t.string   "name"
    t.string   "owner"
    t.text     "visit_reason"
    t.datetime "date_next_appt"
    t.string   "breed",              :limit => 35, :null => false
    t.integer  "weight",                           :null => false
    t.integer  "age",                              :null => false
    t.datetime "date_of_last_visit",               :null => false
  end

  create_table "vets", :force => true do |t|
    t.string  "name"
    t.string  "address"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.string  "school"
    t.integer "num_years"
  end

end
