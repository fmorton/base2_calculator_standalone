class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table "products", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.integer "status", default: 0, null: false
      t.string "name", limit: 128
      t.text "description"
      t.string "new_accounting_id", limit: 32
      t.string "renewal_accounting_id", limit: 32
      t.date "available_at"
      t.date "expire_at"
      t.integer "description_product_id", default: 0, null: false
      t.integer "billing_frequency", default: 0, null: false
      t.decimal "billing_amount", precision: 12, scale: 2, default: "0.0"
      t.decimal "annual_cost", precision: 12, scale: 2, default: "0.0"
      t.boolean "incentive", default: false, null: false
      t.boolean "web_managed_product", default: false, null: false
      t.boolean "web_activation_product", default: false, null: false
      t.string "exact_target_list_id", limit: 64
      t.string "exact_target_email_id", limit: 64
      t.string "exact_target_email_name", limit: 64
      t.string "exact_target_email_address", limit: 64
      t.integer "audience", default: 1, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.string "label", limit: 96
      t.boolean "synchronized", default: false, null: false
      t.index ["data_source_id"], name: "index_products_on_data_source_id"
      t.index ["label"], name: "index_products_on_label"
    end
  end
end