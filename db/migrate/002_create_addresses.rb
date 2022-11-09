class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.string   "address1"
      t.string   "address2"
      t.string   "address3"
      t.string   "city"
      t.string   "state"
      t.string   "zip"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "addresses", ["parent_object_id"], :name => "index_addresses_on_parent_object_id"
    add_index "addresses", ["parent_object_type"], :name => "index_addresses_on_parent_object_type"
  end
end