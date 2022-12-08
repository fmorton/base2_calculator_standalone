class CreateRevisions < ActiveRecord::Migration[7.0]
  def change
    create_table "revisions", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32, null: false
      t.string "name", limit: 64
      t.integer "revised_by", default: 0, null: false
      t.datetime "revised_at", precision: nil
      t.string "revision_type", limit: 4, default: "X", null: false
      t.text "revision_to"
      t.index ["data_source_id"], name: "index_revisions_on_data_source_id"
      t.index ["parent_object_id", "parent_object_type"], name: "index_revisions_on_parent_object"
    end
  end
end