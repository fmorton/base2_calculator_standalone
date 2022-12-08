class CreateExpediaRoomTypes < ActiveRecord::Migration[7.0]
  def change
    create_table "expedia_room_types", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.string "room_type_id", limit: 16
      t.string "room_type_code", limit: 16
      t.text "description"
      t.text "long_description"
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["parent_object_id"], name: "index_expedia_room_types_on_parent_object_id"
      t.index ["room_type_code"], name: "index_expedia_room_types_on_room_type_code"
    end
  end
end