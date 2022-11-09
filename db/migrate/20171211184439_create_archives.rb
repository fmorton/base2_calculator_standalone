class CreateArchives < ActiveRecord::Migration[5.1]
  def change
    create_table :archives do |t|
      t.integer  "context_organization_id", default: 0, null: false
      t.text     "name"
      t.datetime "archive_at"
      t.integer  "archive_by", default: 0, null: false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.text     "serialized_value"
      t.string   "serialized_type", limit: 64
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "archives", ["parent_object_id"]
    add_index "archives", ["archive_at"]
  end
end
