class CreateShortcutUris < ActiveRecord::Migration
  def change
    create_table :shortcut_uris do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.text     "shortcut_uri"
      t.timestamps
    end
  add_index "shortcut_uris", ["shortcut_uri"]
  add_index "shortcut_uris", ["parent_object_id", "parent_object_type"]
  end
end
