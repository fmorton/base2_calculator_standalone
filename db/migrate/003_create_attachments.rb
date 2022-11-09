class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "data_source_id", :default => 0
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32, :null => false
      t.text     "name"
      t.text     "uri"
      t.text     "uri_mime_type"
      t.text     "uri_thumb"
      t.text     "uri_thumb_mime_type"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end
end