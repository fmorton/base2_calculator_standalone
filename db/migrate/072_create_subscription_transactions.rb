class CreateSubscriptionTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table "subscription_transactions", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.integer "product_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.integer "transaction_type", default: 0, null: false
      t.string "transaction_new_or_renewal", limit: 8, default: "N", null: false
      t.date "transaction_at"
      t.decimal "transaction_amount", precision: 12, scale: 2, default: "0.0"
      t.integer "sales_manager_id", default: 0, null: false
      t.boolean "incentive", default: false, null: false
      t.string "invoice_number", limit: 64
      t.string "accounting_id", limit: 64
      t.integer "billing_frequency", default: 0, null: false
      t.integer "publication_component_type_id", default: 0, null: false
      t.integer "publication_section_id", default: 0, null: false
      t.text "description"
      t.integer "created_by", default: 0
      t.integer "updated_by", default: 0
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["data_source_id"], name: "index_subscription_transactions_on_data_source_id"
      t.index ["organization_id"], name: "index_subscription_transactions_on_organization_id"
      t.index ["product_id"], name: "index_subscription_transactions_on_product_id"
    end
  end
end