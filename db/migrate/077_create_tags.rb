class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table "tags", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "tagmap_id", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.integer "alt_tagmap_id", default: 0, null: false
      t.date "started_at"
      t.date "ended_at"
      t.text "description"
      t.text "value"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.datetime "sync_at", precision: nil
      t.string "data_source_owner_id", limit: 32
      t.index ["alt_tagmap_id"], name: "index_tags_on_alt_tagmap_id"
      t.index ["parent_object_id", "parent_object_type"], name: "index_analytics_scores_on_parent"
      t.index ["parent_object_id"], name: "index_tags_on_object_id"
      t.index ["tagmap_id"], name: "index_tags_on_tagmap_id"
    end
  end
end