class CreateTagmaps < ActiveRecord::Migration
  def change
    create_table :tagmaps do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "name", :limit => 96
      t.string   "description", :limit => 128
      t.integer  "parent_id", :default => 0, :null => false
      t.integer  "level", :default => 0, :null => false
      t.string   "label", :limit => 96
      t.string   "type_limit", :limit => 32
      t.integer  "position", :default => 100, :null => false
      t.string   "abbreviation", :limit => 16
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.date     "default_started_at"
      t.date     "default_ended_at"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "tagmaps", ["label"], :name => "index_tagmaps_on_label"
    add_index "tagmaps", ["parent_id"], :name => "index_tagmaps_on_parent_id"
  end
end