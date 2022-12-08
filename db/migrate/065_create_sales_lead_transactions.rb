class CreateSalesLeadTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_date_transactions", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.integer "meeting_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.string "transaction_new_or_renewal", limit: 8, default: "N", null: false
      t.date "transaction_at"
      t.integer "room_nights", default: 0, null: false
      t.integer "meeting_status_id", default: 0, null: false
      t.integer "sales_manager_id", default: 0, null: false
      t.boolean "incentive", default: false, null: false
      t.text "description"
      t.integer "created_by", default: 0
      t.integer "updated_by", default: 0
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["data_source_id"], name: "index_meeting_date_transactions_on_data_source_id"
      t.index ["meeting_date_id"], name: "index_meeting_date_transactions_on_meeting_date_id"
      t.index ["organization_id"], name: "index_meeting_date_transactions_on_organization_id"
    end
  end
end