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

ActiveRecord::Schema[7.0].define(version: 2023_01_19_184124) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bejak_details", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "bejak_id"
    t.text "details"
    t.string "unit"
    t.integer "quantity"
    t.float "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bejak_id"], name: "index_bejak_details_on_bejak_id"
    t.index ["product_id"], name: "index_bejak_details_on_product_id"
  end

  create_table "bejaks", force: :cascade do |t|
    t.text "details"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "current_prices", force: :cascade do |t|
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "price"
    t.index ["product_id"], name: "index_current_prices_on_product_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "full_name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenditures", force: :cascade do |t|
    t.text "description"
    t.integer "amount"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finances", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "invoice_id"
    t.bigint "amount_paid"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_finances_on_customer_id"
    t.index ["invoice_id"], name: "index_finances_on_invoice_id"
  end

  create_table "invoice_details", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "invoice_id"
    t.string "unit"
    t.integer "quantity"
    t.float "unit_price"
    t.integer "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_invoice_details_on_invoice_id"
    t.index ["product_id"], name: "index_invoice_details_on_product_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "customer_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "category_id"
    t.string "product_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fullname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "wastes", force: :cascade do |t|
    t.bigint "product_id"
    t.string "details"
    t.string "unit"
    t.integer "quantity"
    t.float "unit_price"
    t.bigint "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bejak_id"
    t.index ["bejak_id"], name: "index_wastes_on_bejak_id"
    t.index ["product_id"], name: "index_wastes_on_product_id"
  end

  add_foreign_key "bejak_details", "bejaks"
  add_foreign_key "bejak_details", "products"
  add_foreign_key "current_prices", "products"
  add_foreign_key "finances", "customers"
  add_foreign_key "finances", "invoices"
  add_foreign_key "invoice_details", "invoices"
  add_foreign_key "invoice_details", "products"
  add_foreign_key "invoices", "customers"
  add_foreign_key "products", "categories"
  add_foreign_key "wastes", "bejaks"
  add_foreign_key "wastes", "products"
end
