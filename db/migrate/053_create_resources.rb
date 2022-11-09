class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "title", :limit => 128
      t.integer  "position", :default => 100, :null => false
      t.boolean  "public"
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "content_type", :limit => 32
      t.string   "filename", :limit => 128
      t.string   "thumbnail", :limit => 128
      t.integer  "size", :default => 0, :null => false
      t.integer  "width", :default => 0, :null => false
      t.integer  "height", :default => 0, :null => false
      t.text     "uri"
      t.text     "uri_thumb"
      t.string   "parent_object_type", :limit => 32
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.text     "uri_compressed"
      t.text     "description"
      t.text     "keywords"
      t.integer  "status", :default => 0, :null => false
      t.text     "upload_file_name"
      t.string   "upload_content_type", :limit => 32
      t.integer  "upload_file_size"
      t.datetime "upload_updated_at"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "resources", ["data_source_id"], :name => "index_resources_on_data_source_id"
    add_index "resources", ["parent_object_id"], :name => "index_resources_on_parent_object_id"
  end
end