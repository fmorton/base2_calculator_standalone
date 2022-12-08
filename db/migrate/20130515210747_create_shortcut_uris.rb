class CreateShortcutUris < ActiveRecord::Migration[7.0]
  def change
    create_table "shortcut_uris", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.text "shortcut_uri"
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
      t.index ["parent_object_id", "parent_object_type"], name: "index_shortcut_uris_on_parent_object_id_and_parent_object_type"
      t.index ["shortcut_uri"], name: "index_shortcut_uris_on_shortcut_uri"
    end
  end
end
