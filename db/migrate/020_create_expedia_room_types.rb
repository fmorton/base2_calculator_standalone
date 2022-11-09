class CreateExpediaRoomTypes < ActiveRecord::Migration
  def change
    create_table :expedia_room_types do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.string   "room_type_id", :limit => 16
      t.string   "room_type_code", :limit => 16
      t.text     "description"
      t.text     "long_description"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "expedia_room_types", ["parent_object_id"], :name => "index_expedia_room_types_on_parent_object_id"
    add_index "expedia_room_types", ["room_type_code"], :name => "index_expedia_room_types_on_room_type_code"
  end
end