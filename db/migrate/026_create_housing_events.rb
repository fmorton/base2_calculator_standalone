class CreateHousingEvents < ActiveRecord::Migration
  def change
    create_table :housing_events do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "organization_id", :default => 0, :null => false
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.string   "name", :limit => 64
      t.boolean  "include_in_date_search", :default => false, :null => false
      t.datetime "available_at"
      t.datetime "expire_at"
      t.string   "splash_title", :limit => 128
      t.string   "splash_subtitle", :limit => 128
      t.string   "splash_tiny_title", :limit => 48
      t.text     "splash_disclaimer"
      t.datetime "event_starts_at"
      t.datetime "event_ends_at"
      t.string   "gds_event_id", :limit => 64
      t.string   "gds_attendee_id", :limit => 64
      t.boolean  "gds_show_mns", :default => false, :null => false
      t.text     "external_uri"
      t.text     "external_description"
      t.string   "image_uri", :limit => 128
      t.string   "shortcut_url", :limit => 32
      t.string   "view_type", :limit => 32
      t.text     "meta_title"
      t.text     "meta_description"
      t.text     "meta_keywords"
      t.text     "meta_canonical_uri"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end