class CreateSerializedObjects < ActiveRecord::Migration[7.0][5.0]
  def change
    create_table "serialized_objects", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "name", limit: 128
      t.text "serialized_value"
      t.string "serialized_type", limit: 64
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
      t.index ["name"], name: "index_serialized_objects_on_name"
    end
  end
end
