class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "title", :limit => 128
      t.string   "subtitle", :limit => 128
      t.text     "content"
      t.text     "named_content"
      t.boolean  "public"
      t.integer  "position", :default => 100, :null => false
      t.integer  "status", :default => 0, :null => false
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.datetime "display_at"
      t.datetime "available_at"
      t.datetime "expire_at"
      t.text     "image_uri"
      t.text     "link_uri"
      t.text     "link_uri_description"
      t.boolean  "link_opens_new_window", :default => false, :null => false
      t.text     "image_uri_alt"
      t.text     "abstract"
      t.text     "keywords"
      t.string   "author", :limit => 64
      t.text     "shortcut_uri"
      t.integer  "blog_id", :default => 0, :null => false
      t.text     "meta_title"
      t.text     "meta_description"
      t.text     "meta_keywords"
      t.text     "meta_canonical_uri"
      t.string   "analytics_name", :limit => 64
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end