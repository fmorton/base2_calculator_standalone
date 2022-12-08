class CreateSubscriptionStatusLogs < ActiveRecord::Migration[7.0]
  def change
    create_table "subscription_status_logs", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.integer "subscription_id", default: 0, null: false
      t.datetime "log_at", precision: nil
      t.integer "log_by", default: 0, null: false
      t.integer "status", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["data_source_id"], name: "index_subscription_logs_on_data_source_id"
      t.index ["subscription_id"], name: "index_subscription_logs_on_subscription_id"
    end
  end
end