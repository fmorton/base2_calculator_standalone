class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table "notes", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "note_type_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.integer "person_id", default: 0, null: false
      t.integer "product_id", default: 0, null: false
      t.integer "meeting_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.text "content"
      t.date "note_at"
      t.date "followup_needed_at"
      t.date "followup_completed_at"
      t.integer "followup_by_id", default: 0, null: false
      t.text "followup_content"
      t.integer "data_source_id", default: 0, null: false
      t.text "email_to"
      t.text "email_cc"
      t.text "email_bcc"
      t.text "email_from"
      t.text "email_subject"
      t.date "activity_at"
      t.boolean "hotel_viewable", default: false, null: false
      t.boolean "planner_viewable", default: false, null: false
      t.boolean "flagged", default: false, null: false
      t.text "html"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.decimal "score", precision: 12, scale: 2, default: "0.0", null: false
      t.string "data_source_owner_id", limit: 32
      t.integer "count_value", default: 0, null: false
      t.integer "author_id", default: 0, null: false
      t.index ["author_id"], name: "index_notes_on_author_id"
      t.index ["data_source_id"], name: "index_notes_on_data_source_id"
      t.index ["followup_by_id"], name: "index_notes_on_followup_by_id"
      t.index ["followup_needed_at"], name: "index_notes_on_followup_needed_at"
      t.index ["meeting_date_id"], name: "index_notes_on_meeting_date_id"
      t.index ["meeting_id"], name: "index_notes_on_meeting_id"
      t.index ["note_type_id", "created_by", "created_at"], name: "index_notes_for_reports_1"
      t.index ["note_type_id"], name: "index_notes_on_note_type_id"
      t.index ["organization_id"], name: "index_notes_on_organization_id"
      t.index ["person_id"], name: "index_notes_on_person_id"
      t.index ["product_id"], name: "index_notes_on_product_id"
    end
  end
end