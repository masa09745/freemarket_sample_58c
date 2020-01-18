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

ActiveRecord::Schema.define(version: 2020_01_11_121717) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "prefecture_id"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "brand_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorie_sizes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "size_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_categorie_sizes_on_category_id"
    t.index ["size_id"], name: "index_categorie_sizes_on_size_id"
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "category_name", null: false
    t.string "ancestry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliver_addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.integer "postal_code", null: false
    t.integer "prefecture", null: false
    t.string "city", null: false
    t.string "street_address", null: false
    t.string "building_name"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_deliver_addresses_on_user_id"
  end

  create_table "freemarkets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "item", null: false
    t.integer "price", null: false
    t.string "condition", null: false
    t.string "ship_charge", null: false
    t.integer "ship_from", default: 0, null: false
    t.string "ship_method", null: false
    t.string "ship_day", null: false
    t.text "description", null: false
    t.integer "status", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "item_image_id", null: false
    t.bigint "category_id", null: false
    t.bigint "size_id", null: false
    t.bigint "brand_id", null: false
    t.index ["brand_id"], name: "index_freemarkets_on_brand_id"
    t.index ["category_id"], name: "index_freemarkets_on_category_id"
    t.index ["item_image_id"], name: "index_freemarkets_on_item_image_id"
    t.index ["size_id"], name: "index_freemarkets_on_size_id"
    t.index ["user_id"], name: "index_freemarkets_on_user_id"
  end

  create_table "item_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "freemarket_id", null: false
    t.index ["freemarket_id"], name: "index_item_images_on_freemarket_id"
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "freemarket_id"
    t.bigint "deliver_address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deliver_address_id"], name: "index_orders_on_deliver_address_id"
    t.index ["freemarket_id"], name: "index_orders_on_freemarket_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "sizes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "item_size", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.string "birth_year", null: false
    t.string "birth_month", null: false
    t.string "birth_day", null: false
    t.integer "postal_code", null: false
    t.integer "prefecture"
    t.string "city"
    t.string "address"
    t.string "building_name"
    t.text "profile_content"
    t.datetime "deleted_at"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.string "provider"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "categorie_sizes", "categories"
  add_foreign_key "categorie_sizes", "sizes"
  add_foreign_key "deliver_addresses", "users"
  add_foreign_key "freemarkets", "brands"
  add_foreign_key "freemarkets", "categories"
  add_foreign_key "freemarkets", "item_images"
  add_foreign_key "freemarkets", "sizes"
  add_foreign_key "freemarkets", "users"
  add_foreign_key "item_images", "freemarkets"
  add_foreign_key "orders", "deliver_addresses"
  add_foreign_key "orders", "freemarkets"
  add_foreign_key "orders", "users"
end
