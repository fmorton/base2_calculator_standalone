class CreateWebConventions < ActiveRecord::Migration
  def change
    create_table :web_conventions do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "sales_lead_id", :default => 0, :null => false
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.string   "name", :limit => 64
      t.string   "title", :limit => 128
      t.string   "date_description", :limit => 64
      t.text     "external_uri"
      t.text     "external_description"
      t.string   "image_uri", :limit => 128
      t.string   "shortcut_url", :limit => 32
      t.text     "meta_title"
      t.text     "meta_description"
      t.text     "meta_keywords"
      t.text     "meta_canonical_uri"
      t.text     "optional_uri"
      t.text     "optional_description"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "web_conventions", ["shortcut_url"], :name => "index_web_conventions_on_shortcut_url"
  end
end