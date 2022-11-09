class CreateSalesLeadResponseStatusLogs < ActiveRecord::Migration
  def change
    create_table :sales_lead_response_status_logs do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "sales_lead_response_id", :default => 0, :null => false
      t.integer  "approval_status", :default => 0, :null => false
      t.integer  "approval_by", :default => 0, :null => false
      t.string   "peak_rooms", :limit => 32
      t.string   "rate", :limit => 32
      t.datetime "log_at"
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "sales_lead_response_status_logs", ["data_source_id"], :name => "index_response_logs_data_source_id"
    add_index "sales_lead_response_status_logs", ["sales_lead_response_id"], :name => "index_response_logs_on_sales_lead_response_id"
  end
end