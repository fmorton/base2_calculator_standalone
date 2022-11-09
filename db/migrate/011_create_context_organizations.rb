class CreateContextOrganizations < ActiveRecord::Migration
  def change
    create_table :context_organizations do |t|
      t.string   "name"
      t.string   "label", :limit => 32
      t.text     "server_names"
      t.text     "secure_locations"
      t.boolean  "secure_with_ssl"
      t.string   "default_layout", :limit => 32
      t.string   "default_controller", :limit => 128
      t.string   "default_action", :limit => 128
      t.string   "unknown_controller", :limit => 128
      t.string   "unknown_action", :limit => 128
      t.string   "unknown_layout", :limit => 32
      t.boolean  "hyphen_view_type", :default => false, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end