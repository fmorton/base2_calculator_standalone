class CreateViewMaps < ActiveRecord::Migration[7.0]
  def change
    create_table "view_maps", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.integer "tagmap_id", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
      t.string "parent_object_type", limit: 32
      t.integer "tagmap_context_id", default: 0, null: false
      t.index ["parent_object_id"], name: "index_view_maps_on_person_id"
      t.index ["tagmap_id", "tagmap_context_id"], name: "index_view_maps_on_tagmap_id_and_tagmap_context_id"
    end
  end
end
