class CreateSalesLeadMeetingSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_date_meeting_spaces", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.integer "meeting_space_id", default: 0, null: false
      t.text "assignments"
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["data_source_id"], name: "index_meeting_spaces_on_data_source_id"
    end
  end
end