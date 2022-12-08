class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table "resources", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "title", limit: 128
      t.integer "position", default: 100, null: false
      t.boolean "public"
      t.integer "parent_object_id", default: 0, null: false
      t.string "content_type", limit: 32
      t.string "filename", limit: 128
      t.string "thumbnail", limit: 128
      t.integer "size", default: 0, null: false
      t.integer "width", default: 0, null: false
      t.integer "height", default: 0, null: false
      t.text "uri"
      t.text "uri_thumb"
      t.string "parent_object_type", limit: 32
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.text "uri_compressed"
      t.text "description"
      t.text "keywords"
      t.integer "status", default: 0, null: false
      t.text "upload_file_name"
      t.string "upload_content_type", limit: 32
      t.integer "upload_file_size"
      t.datetime "upload_updated_at", precision: nil
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["data_source_id"], name: "index_resources_on_data_source_id"
      t.index ["parent_object_id"], name: "index_resources_on_parent_object_id"
    end
  end
end