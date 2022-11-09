class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer "context_organization_id", :default => 0, :null => false
      t.string  "data_source_id", :limit => 32
      t.integer "data_source_status", :default => 0, :null => false
      t.integer "status", :default => 0, :null => false
      t.integer "parent_object_id", :default => 0, :null => false
      t.string  "parent_object_type", :limit => 32, :null => false
      t.integer "product_id", :default => 0, :null => false
      t.integer "content_id", :default => 0, :null => false
      t.integer "sales_manager_id", :default => 0, :null => false
      t.text    "description"
      t.text    "extended_description"
      t.text    "planner_description"
      t.date    "started_at"
      t.date    "renewed_at"
      t.date    "expire_at"
      t.integer "billing_frequency", :default => 0, :null => false
      t.decimal "billing_amount", :precision => 12, :scale => 2, :default => 0.0
      t.decimal "balance_current", :precision => 12, :scale => 2, :default => 0.0
      t.decimal "balance_30_days", :precision => 12, :scale => 2, :default => 0.0
      t.decimal "balance_60_days", :precision => 12, :scale => 2, :default => 0.0
      t.decimal "balance_90_days", :precision => 12, :scale => 2, :default => 0.0
      t.decimal "balance_120_plus_days", :precision => 12, :scale => 2, :default => 0.0
      t.decimal "balance_total", :precision => 12, :scale => 2, :default => 0.0
      t.decimal "last_payment_amount", :precision => 12, :scale => 2, :default => 0.0
      t.date    "last_payment_at"
      t.integer "created_by", :default => 0, :null => false
      t.integer "updated_by", :default => 0, :null => false
    end

    add_index "subscriptions", ["data_source_id"], :name => "index_subscriptions_on_data_source_id"
    add_index "subscriptions", ["parent_object_id", "parent_object_type"], :name => "index_subscriptions_on_parent_object"
    add_index "subscriptions", ["product_id"], :name => "index_subscriptions_on_product_id"
  end
end