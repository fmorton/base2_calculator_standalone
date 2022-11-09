class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.text     "abstract"
      t.string   "coordinates", :limit => 64
      t.datetime "date_range_end_at"
      t.datetime "date_range_start_at"
      t.text     "description"
      t.string   "event_phone", :limit => 32
      t.text     "event_uri"
      t.boolean  "free_event", :default => false, :null => false
      t.boolean  "major_event", :default => false, :null => false
      t.string   "name", :limit => 128
      t.string   "tickets_phone", :limit => 32
      t.text     "tickets_uri"
      t.integer  "venue_id", :default => 0, :null => false
      t.string   "venue_name", :limit => 128
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.string   "shortcut_url", :limit => 128
      t.text     "keywords"
      t.text     "image_uri"
      t.datetime "feature_available_at"
      t.datetime "feature_expire_at"
      t.integer  "position", :default => 100, :null => false
      t.text     "meta_title"
      t.text     "meta_description"
      t.text     "meta_keywords"
      t.text     "meta_canonical_uri"
      t.string   "temp_data_source_id", :limit => 32
      t.integer  "status", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.datetime "sync_at"
    end

    add_index "events", ["shortcut_url"], :name => "index_events_on_shortcut_url"
  end
end