class CreateMeetingQualifications < ActiveRecord::Migration[7.0]
  def change
    create_table :meeting_qualifications do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "meeting_id", :default => 0, :null => false
      t.integer  "qualified_by", :default => 0, :null => false
      t.integer  "qualified_by_author_id", :default => 0, :null => false
      t.datetime "qualified_at"
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end