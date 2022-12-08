class CreateAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table "attachments", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "data_source_id", default: 0
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32, null: false
      t.text "name"
      t.text "uri"
      t.text "uri_mime_type"
      t.text "uri_thumb"
      t.text "uri_thumb_mime_type"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
      t.string "attachment_type", limit: 32, default: "", null: false
      t.index ["parent_object_id", "parent_object_type"], name: "index_attachments_on_parent_object_id_and_parent_object_type"
    end
  end
end