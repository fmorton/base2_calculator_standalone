class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table "addresses", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.string "address1", limit: 255
      t.string "address2", limit: 255
      t.string "address3", limit: 255
      t.string "city", limit: 255
      t.string "state", limit: 255
      t.string "zip", limit: 255
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.string "data_source_owner_id", limit: 32
      t.string "name", limit: 255
      t.string "address_type", limit: 16
      t.text "country"
      t.index ["parent_object_id"], name: "index_addresses_on_parent_object_id"
      t.index ["parent_object_type"], name: "index_addresses_on_parent_object_type"
    end
  end
end