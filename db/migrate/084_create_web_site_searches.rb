class CreateWebSiteSearches < ActiveRecord::Migration
  def change
    create_table :web_site_searches do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.text     "name"
      t.text     "content"
      t.text     "keywords"
      t.string   "shortcut_url", :limit => 128
      t.string   "view_type", :limit => 32
      t.string   "data_source_id", :limit => 32
      t.text     "image_uri"
      t.datetime "sync_at"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "web_site_searches", ["parent_object_id"], :name => "index_web_site_searches_on_parent_object_id"
    add_index "web_site_searches", ["shortcut_url"], :name => "index_web_site_searches_on_shortcut_url"
  end
end