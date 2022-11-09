class CreateSalesLeadMeetingSpaces < ActiveRecord::Migration
  def change
    create_table :sales_lead_meeting_spaces do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "sales_lead_id", :default => 0, :null => false
      t.integer  "meeting_space_id", :default => 0, :null => false
      t.text     "assignments"
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "sales_lead_meeting_spaces", ["data_source_id"], :name => "index_meeting_spaces_on_data_source_id"
  end
end