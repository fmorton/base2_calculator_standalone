class CreateNoteLogs < ActiveRecord::Migration[7.0][5.0]
  def change
    create_table "note_logs", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "note_id", default: 0, null: false
      t.integer "note_type_id", default: 0, null: false
      t.date "followup_needed_at"
      t.date "followup_completed_at"
      t.integer "followup_by_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["data_source_id"], name: "index_note_logs_on_data_source_id"
      t.index ["note_id"], name: "index_note_logs_on_note_id"
    end
  end
end
