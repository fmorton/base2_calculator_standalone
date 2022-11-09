class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.datetime "display_at"
      t.datetime "available_at"
      t.datetime "expire_at"
      t.boolean  "leisure_coupon", :default => false, :null => false
      t.text     "description"
      t.text     "leisure_disclaimer"
      t.text     "leisure_bar_code_uri"
      t.text     "leisure_external_coupon_uri"
      t.boolean  "convention_coupon", :default => false, :null => false
      t.text     "convention_disclaimer"
      t.text     "convention_bar_code_uri"
      t.text     "convention_external_coupon_uri"
      t.boolean  "hide_address", :default => false, :null => false
      t.boolean  "hide_phone", :default => false, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.datetime "sync_at"
    end
  end
end