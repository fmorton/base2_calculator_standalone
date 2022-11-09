class CreateSalesLeadMeetingSpaceStatusLogs < ActiveRecord::Migration
  def change
    create_table :sales_lead_meeting_space_status_logs do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "sales_lead_id", :default => 0, :null => false
      t.integer  "meeting_space_grid_status", :default => 0, :null => false
      t.integer  "verified_by", :default => 0, :null => false
      t.datetime "log_at"
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "sales_lead_meeting_space_status_logs", ["data_source_id"], :name => "index_space_logs_on_data_source_id"
  end
end