class CreateMeetings< ActiveRecord::Migration[7.0]
  def change
    create_table "meetings", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.text "name"
      t.text "description"
      t.date "qualified_at"
      t.integer "qualified_by", default: 0, null: false
      t.integer "qualified_by_author_id", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.string "data_source_owner_id", limit: 32
      t.index ["data_source_id"], name: "index_meetings_on_data_source_id"
      t.index ["organization_id"], name: "index_meetings_on_organization_id"
    end
  end
end