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

ActiveRecord::Schema.define(version: 20161217010706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "image"
    t.text     "description"
    t.integer  "order"
    t.string   "token"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "attachments", ["product_id"], name: "index_attachments_on_product_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "zh_name"
    t.string   "jp_name"
    t.string   "en_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "country"
    t.integer  "orders_count", default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "code"
    t.string   "address"
    t.string   "person_name"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "code"
    t.integer  "company_id"
    t.string   "name"
    t.string   "phone"
    t.integer  "orders_count", default: 0
    t.string   "desc"
    t.integer  "role",         default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "customers", ["company_id"], name: "index_customers_on_company_id", using: :btree

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree
  add_index "delayed_jobs", ["queue"], name: "delayed_jobs_queue", using: :btree

  create_table "error_records", force: :cascade do |t|
    t.string   "name"
    t.string   "message"
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "status",         default: 0
  end

  add_index "error_records", ["trackable_type", "trackable_id"], name: "index_error_records_on_trackable_type_and_trackable_id", using: :btree

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "amount",     default: 0
    t.string   "desc"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id", using: :btree
  add_index "order_items", ["product_id"], name: "index_order_items_on_product_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "customer_id"
    t.string   "num"
    t.integer  "order_items_count",                            default: 0
    t.string   "shipping_num"
    t.string   "blackcat_num"
    t.decimal  "height",              precision: 10, scale: 3
    t.decimal  "length",              precision: 10, scale: 3
    t.decimal  "width",               precision: 10, scale: 3
    t.decimal  "total_weight",        precision: 10, scale: 3
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.integer  "paper_records_count",                          default: 0
    t.decimal  "total_box_weight",    precision: 10, scale: 3
    t.decimal  "vw_factor",           precision: 10, scale: 2
    t.string   "customer_name"
    t.string   "customer_address"
    t.string   "customer_phone"
  end

  add_index "orders", ["company_id"], name: "index_orders_on_company_id", using: :btree
  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "paper_records", force: :cascade do |t|
    t.integer  "paper_id"
    t.integer  "order_id"
    t.integer  "company_id"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.string   "box"
    t.integer  "display",                                      default: 0
    t.integer  "sub_box"
    t.string   "main_size"
    t.string   "main_size_vw_factor",                          default: "6000"
    t.decimal  "main_net_weight",     precision: 10, scale: 3
  end

  add_index "paper_records", ["company_id"], name: "index_paper_records_on_company_id", using: :btree
  add_index "paper_records", ["order_id"], name: "index_paper_records_on_order_id", using: :btree
  add_index "paper_records", ["paper_id"], name: "index_paper_records_on_paper_id", using: :btree

  create_table "papers", force: :cascade do |t|
    t.text     "delivery"
    t.text     "jp_invoice"
    t.text     "packing_list"
    t.text     "tw_invoice"
    t.text     "customer_invoice"
    t.date     "schedule_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "schedule_date_num"
  end

  create_table "products", force: :cascade do |t|
    t.string   "zh_name"
    t.string   "jp_name"
    t.string   "en_name"
    t.string   "barcode",                                    default: ""
    t.decimal  "price",             precision: 14, scale: 3
    t.string   "origin"
    t.string   "material"
    t.decimal  "weight",            precision: 10, scale: 3
    t.integer  "data_state",                                 default: 0
    t.integer  "scrape_state",                               default: 0
    t.integer  "revise_state",                               default: 0
    t.integer  "special_state",                              default: 0
    t.integer  "sample_state",                               default: 0
    t.string   "tag"
    t.string   "url"
    t.string   "size"
    t.integer  "first_order_id"
    t.string   "et_item_code",                               default: ""
    t.string   "et_code1",                                   default: ""
    t.string   "et_code2",                                   default: ""
    t.integer  "order_items_count",                          default: 0
    t.integer  "attachments_count",                          default: 0
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.integer  "category_id"
    t.integer  "shop_id"
    t.integer  "selfie_state",                               default: 0
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["shop_id"], name: "index_products_on_shop_id", using: :btree

  create_table "shops", force: :cascade do |t|
    t.string   "zh_name"
    t.string   "jp_name"
    t.string   "en_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attachments", "products"
  add_foreign_key "customers", "companies"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "companies"
  add_foreign_key "orders", "customers"
  add_foreign_key "paper_records", "companies"
  add_foreign_key "paper_records", "orders"
  add_foreign_key "paper_records", "papers"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "shops"
end
