class CreateTagmaps < ActiveRecord::Migration[7.0]
  def change
    create_table "tagmaps", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "name", limit: 96
      t.text "description"
      t.integer "parent_id", default: 0, null: false
      t.integer "level", default: 0, null: false
      t.text "label"
      t.string "type_limit", limit: 32
      t.integer "position", default: 100, null: false
      t.string "abbreviation", limit: 16
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.date "default_started_at"
      t.date "default_ended_at"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.text "category_label"
      t.text "flags"
      t.string "data_source_owner_id", limit: 32
      t.index ["label"], name: "index_tagmaps_on_label"
      t.index ["parent_id"], name: "index_tagmaps_on_parent_id"
    end
  end
end