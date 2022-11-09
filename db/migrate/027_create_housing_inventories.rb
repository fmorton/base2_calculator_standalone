class CreateHousingInventories < ActiveRecord::Migration
  def change
    create_table :housing_inventories do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "housing_event_id", :default => 0, :null => false
      t.string   "expedia_id", :limit => 32
      t.text     "expedia_uri"
      t.string   "room_rate_low", :limit => 16
      t.string   "room_rate_high", :limit => 16
      t.decimal  "distance_from_venue", :precision => 12, :scale => 2
      t.string   "location_string", :limit => 32
      t.datetime "created_at"
      t.datetime "updated_at"
      t.datetime "sync_at"
    end
  end
end