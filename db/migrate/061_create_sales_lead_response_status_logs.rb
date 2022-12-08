class CreateSalesLeadResponseStatusLogs < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_date_response_status_logs", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "meeting_date_response_id", default: 0, null: false
      t.integer "approval_status", default: 0, null: false
      t.integer "approval_by", default: 0, null: false
      t.string "peak_rooms", limit: 32
      t.text "rate"
      t.datetime "log_at", precision: nil
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.string "date_range", limit: 80
      t.index ["data_source_id"], name: "index_response_logs_data_source_id"
      t.index ["meeting_date_response_id"], name: "index_response_logs_on_meeting_date_response_id"
    end
  end
end