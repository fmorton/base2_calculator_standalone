class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.text     "session_id"
      t.text     "request_ip"
      t.text     "request_fullpath"
      t.text     "request_original_fullpath"
      t.text     "request_remote_ip"
      t.text     "header_http_user_agent"
      t.text     "header_remote_addr"
      t.text     "header_remote_host"
      t.text     "header_http_referer"
      t.boolean  "spider"
      t.timestamps
    end
  end
end
