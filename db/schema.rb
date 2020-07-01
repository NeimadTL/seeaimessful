# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_01_172313) do

  create_table "user_sign_up_form_input_values", force: :cascade do |t|
    t.integer "user_sign_up_form_input_id"
    t.integer "user_id"
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_sign_up_form_input_values_on_user_id"
    t.index ["user_sign_up_form_input_id", "user_id"], name: "usufi_id_and_user_id_index", unique: true
    t.index ["user_sign_up_form_input_id"], name: "usufi_id_index"
  end

  create_table "user_sign_up_form_inputs", force: :cascade do |t|
    t.string "input_name"
    t.boolean "required"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
