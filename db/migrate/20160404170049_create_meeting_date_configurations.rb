class CreateMeetingDateConfigurations < ActiveRecord::Migration
  def change
    create_table :meeting_date_configurations do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "property_name", :limit => 64
      t.boolean  "view", :default => false, :null => false
      t.integer  "meeting_status_id", :default => 0, :null => false
      t.integer  "approval_type_id", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false

      t.timestamps :null => false
    end
  end
end
