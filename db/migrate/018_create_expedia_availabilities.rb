class CreateExpediaAvailabilities < ActiveRecord::Migration
  def change
    create_table :expedia_availabilities do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.datetime "arrival_at"
      t.string   "rate_code", :limit => 16
      t.string   "room_type_code", :limit => 16
      t.string   "display_nightly_rate", :limit => 16
      t.string   "display_room_rate", :limit => 16
      t.string   "chargeable_room_rate_total", :limit => 16
      t.string   "native_room_rate", :limit => 16
      t.string   "current_allotment", :limit => 16
      t.text     "room_type_description"
      t.text     "cancellation_policy"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.datetime "sync_at"
    end

    add_index "expedia_availabilities", ["parent_object_id", "room_type_code", "rate_code", "arrival_at"], :name => "index_expedia_availabilities_multi_1"
  end
end