class CreateArchives < ActiveRecord::Migration[7.0][5.1]
  def change
    create_table "archives", force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.text "name"
      t.datetime "archive_at", precision: nil
      t.integer "archive_by", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.text "serialized_value"
      t.string "serialized_type", limit: 64
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["archive_at"], name: "index_archives_on_archive_at"
      t.index ["parent_object_id"], name: "index_archives_on_parent_object_id"
    end
  end
end
