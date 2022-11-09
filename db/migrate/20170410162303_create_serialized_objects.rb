class CreateSerializedObjects < ActiveRecord::Migration[5.0]
  def change
    create_table :serialized_objects do |t|
      t.integer  "context_organization_id", default: 0, null: false
      t.string   "name", limit: 128
      t.text     "serialized_value"
      t.string   "serialized_type", limit: 64
      t.timestamps
    end

    add_index "serialized_objects", ["name"]
  end
end
