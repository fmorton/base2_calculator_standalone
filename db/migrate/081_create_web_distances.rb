class CreateWebDistances < ActiveRecord::Migration[7.0]
  def change
    create_table "web_distances", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "object_1_id", default: 0, null: false
      t.string "object_1_type", limit: 32, null: false
      t.integer "object_2_id", default: 0, null: false
      t.string "object_2_type", limit: 32, null: false
      t.decimal "distance", precision: 12, scale: 2, null: false
      t.string "object_1_view_type", limit: 32
      t.string "object_2_view_type", limit: 32
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["context_organization_id", "object_1_id", "object_2_id"], name: "index_web_distances_multi_1"
      t.index ["object_1_id"], name: "index_web_distances_on_object_1_id"
    end
  end
end