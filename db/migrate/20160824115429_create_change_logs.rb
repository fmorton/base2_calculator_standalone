class CreateChangeLogs < ActiveRecord::Migration[7.0]
  def change
    create_table "change_logs", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.text "name"
      t.text "from_value"
      t.text "to_value"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["parent_object_id", "parent_object_type"], name: "index_change_logs_on_parent_object"
    end
  end
end
