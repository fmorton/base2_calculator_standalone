class CreateEventDates < ActiveRecord::Migration
  def change
    create_table :event_dates do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "event_id", :default => 0, :null => false
      t.datetime "event_at"
      t.string   "event_times", :limit => 128, :null => false
      t.integer  "event_date_pattern_id", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.datetime "sync_at"
    end

    add_index "event_dates", ["event_at"], :name => "index_event_dates_on_event_at"
    add_index "event_dates", ["event_date_pattern_id"], :name => "index_event_dates_on_event_date_pattern_id"
    add_index "event_dates", ["event_id"], :name => "index_event_dates_on_event_id"
  end
end