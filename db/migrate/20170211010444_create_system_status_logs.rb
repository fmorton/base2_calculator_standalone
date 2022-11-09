class CreateSystemStatusLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :system_status_logs do |t|
      t.integer  "context_organization_id", default: 0, null: false
      t.string   "label", limit: 64
      t.string   "identifier", limit: 64, default: nil
      t.datetime "started_at"
      t.datetime "finished_at"
      t.boolean  "completed", default: false, null: false
      t.text     "message"
      t.text     "error_message"
      t.integer  "count", default: 0, null: false
      t.string   "count_type", limit: 64

      t.timestamps
    end
  end
end
