class CreateSystemStatusLogs < ActiveRecord::Migration[7.0][5.0]
  def change
    create_table "system_status_logs", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "label", limit: 64
      t.string "identifier", limit: 64
      t.datetime "started_at", precision: nil
      t.datetime "finished_at", precision: nil
      t.boolean "completed", default: false, null: false
      t.text "message"
      t.text "error_message"
      t.integer "count", default: 0, null: false
      t.string "count_type", limit: 64
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
    end
  end
end
