class CreateWebRequests < ActiveRecord::Migration
  def change
    create_table :web_requests do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "person_id", :default => 0, :null => false
      t.integer  "organization_id", :default => 0, :null => false
      t.text     "name_first"
      t.text     "name_last"
      t.text     "organization_name"
      t.string   "title", :limit => 128
      t.string   "email", :limit => 64
      t.string   "phone", :limit => 32
      t.string   "phone_fax", :limit => 32
      t.string   "address1", :limit => 128
      t.string   "address1", :limit => 128
      t.string   "address2", :limit => 128
      t.string   "address3", :limit => 128
      t.string   "city", :limit => 64
      t.string   "state", :limit => 32
      t.string   "zip", :limit => 32
      t.string   "country", :limit => 64
      t.string   "subject", :limit => 96
      t.text     "content"
      t.text     "named_content"
      t.string   "label", :limit => 96
      t.boolean  "sign_up", :default => false, :null => false
      t.boolean  "accept_terms_and_conditions", :default => false, :null => false
      t.boolean  "needs_sync", :default => false, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "web_requests", ["needs_sync"], :name => "index_web_requests_needs_sync"
  end
end
