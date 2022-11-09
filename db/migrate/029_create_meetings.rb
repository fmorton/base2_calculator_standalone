class CreateMeetings< ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "organization_id", :default => 0, :null => false
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.text     "name"
      t.text     "description"
      t.date     "qualified_at"
      t.integer  "qualified_by", :default => 0, :null => false
      t.integer  "qualified_by_author_id", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "meetings", ["data_source_id"], :name => "index_meetings_on_data_source_id"
    add_index "meetings", ["organization_id"], :name => "index_meetings_on_organization_id"
  end
end