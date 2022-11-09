class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "tagmap_id", :default => 0, :null => false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.integer  "alt_tagmap_id", :default => 0, :null => false
      t.date     "started_at"
      t.date     "ended_at"
      t.text     "description"
      t.text     "value"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.datetime "sync_at"
    end

    add_index "tags", ["tagmap_id"], :name => "index_tags_on_tagmap_id"
    add_index "tags", ["parent_object_id"], :name => "index_tags_on_object_id"
    add_index "tags", ["alt_tagmap_id"], :name => "index_tags_on_alt_tagmap_id"
  end
end