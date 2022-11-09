class CreateSubscriptionStatusLogs < ActiveRecord::Migration
  def change
    create_table :subscription_status_logs do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.integer  "subscription_id", :default => 0, :null => false
      t.datetime "log_at"
      t.integer  "log_by", :default => 0, :null => false
      t.integer  "status", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "subscription_status_logs", ["data_source_id"], :name => "index_subscription_logs_on_data_source_id"
    add_index "subscription_status_logs", ["subscription_id"], :name => "index_subscription_logs_on_subscription_id"
  end
end