class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "name"
      t.string   "key", :limit => 32
      t.integer  "parent_id", :default => 0, :null => false
      t.text     "secure_locations"
      t.boolean  "secure_with_ssl"
      t.string   "data_source_id", :limit => 32
      t.string   "sort_name", :limit => 128
      t.string   "former_name", :limit => 128
      t.string   "acronym", :limit => 16
      t.string   "phone_main", :limit => 32
      t.string   "phone_fax", :limit => 32
      t.string   "phone_toll_free", :limit => 32
      t.string   "expedia_id", :limit => 32
      t.string   "passkey_id", :limit => 32
      t.text     "website"
      t.string   "email", :limit => 64
      t.string   "coordinates", :limit => 64
      t.text     "keywords"
      t.string   "shortcut_url", :limit => 128
      t.string   "view_type", :limit => 32
      t.text     "server_names"
      t.string   "default_layout", :limit => 32
      t.string   "label", :limit => 32
      t.string   "default_controller", :limit => 128
      t.string   "default_action", :limit => 128
      t.string   "unknown_controller", :limit => 128
      t.string   "unknown_action", :limit => 128
      t.string   "unknown_layout", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.boolean  "hyphen_view_type", :default => false, :null => false
      t.text     "image_uri"
      t.text     "meta_title"
      t.text     "meta_description"
      t.text     "meta_keywords"
      t.text     "meta_canonical_uri"
      t.string   "aci_organization_id", :limit => 32
      t.string   "aci_venue_id", :limit => 32
      t.integer  "status", :default => 0, :null => false
      t.integer  "county_id", :default => 0, :null => false
      t.string   "accounting_id", :limit => 32
      t.decimal  "accounting_balance", :precision => 12, :scale => 2, :default => 0.0
      t.date     "accounting_last_payment_at"
      t.string   "cross_street_1", :limit => 96
      t.string   "cross_street_2", :limit => 96
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.datetime "sync_at"
    end

    add_index "organizations", ["data_source_id"], :name => "index_organizations_on_data_source_id"
    add_index "organizations", ["shortcut_url"], :name => "index_organizations_on_shortcut_url"
  end
end