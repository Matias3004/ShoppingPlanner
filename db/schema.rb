# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_06_203043) do
  create_table "product_lists", force: :cascade do |t|
    t.string "productList_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "quantity"
    t.integer "productList_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["productList_id"], name: "index_products_on_productList_id"
  end

  create_table "recipe_elements", force: :cascade do |t|
    t.string "name"
    t.string "quantity"
    t.integer "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_recipe_elements_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "userEmail_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["userEmail_id"], name: "index_recipes_on_userEmail_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "login"
    t.string "password"
    t.integer "productList_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["productList_id"], name: "index_users_on_productList_id"
  end

  add_foreign_key "products", "productLists"
  add_foreign_key "recipe_elements", "recipes"
  add_foreign_key "recipes", "userEmails"
  add_foreign_key "users", "productLists"
end
