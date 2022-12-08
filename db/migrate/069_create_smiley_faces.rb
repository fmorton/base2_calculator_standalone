class CreateSmileyFaces < ActiveRecord::Migration[7.0]
  def change
    create_table "smiley_faces", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.datetime "smiley_face_at", precision: nil
      t.string "color", limit: 8
      t.text "note"
      t.integer "created_by", default: 0
      t.integer "updated_by", default: 0
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
    end
  end
end