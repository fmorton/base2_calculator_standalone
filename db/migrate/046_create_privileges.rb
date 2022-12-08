class CreatePrivileges < ActiveRecord::Migration[7.0]
  def change
    create_table "privileges", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "person_id", default: 0, null: false
      t.integer "tagmap_id", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.boolean "can_create", default: false, null: false
      t.boolean "can_read", default: false, null: false
      t.boolean "can_update", default: false, null: false
      t.boolean "can_delete", default: false, null: false
      t.boolean "can_see", default: false, null: false
      t.boolean "can_admin", default: false, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["parent_object_id"], name: "index_privileges_on_parent_object_id"
    end
  end
end