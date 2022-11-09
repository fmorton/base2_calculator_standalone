class CreateRedirects < ActiveRecord::Migration
  def change
    create_table :redirects do |t|
      t.string   "controller"
      t.string   "action"
      t.string   "hostname", :default => "", :null => false
      t.integer  "action_id", :default => 0, :null => false
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "shortcut_url", :limit => 128, :default => ""
      t.string   "layout", :limit => 32
      t.string   "label", :limit => 64
      t.text     "params"
      t.text     "target_uri"
      t.text     "meta_title"
      t.text     "meta_description"
      t.text     "meta_keywords"
      t.text     "meta_canonical_uri"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "redirects", ["shortcut_url"], :name => "index_redirects_on_shortcut_url"
  end
end