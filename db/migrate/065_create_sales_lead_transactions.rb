class CreateSalesLeadTransactions < ActiveRecord::Migration
  def change
    create_table :sales_lead_transactions do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "organization_id", :default => 0, :null => false
      t.integer  "meeting_id", :default => 0, :null => false
      t.integer  "sales_lead_id", :default => 0, :null => false
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.string   "transaction_new_or_renewal", :limit => 8, :default => "N", :null => false
      t.date     "transaction_at"
      t.integer  "room_nights", :default => 0, :null => false
      t.integer  "meeting_status_id", :default => 0, :null => false
      t.integer  "sales_manager_id", :default => 0, :null => false
      t.boolean  "incentive", :default => false, :null => false
      t.text     "description"
      t.integer  "created_by", :default => 0
      t.integer  "updated_by", :default => 0
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "sales_lead_transactions", ["data_source_id"], :name => "index_sales_lead_transactions_on_data_source_id"
    add_index "sales_lead_transactions", ["organization_id"], :name => "index_sales_lead_transactions_on_organization_id"
    add_index "sales_lead_transactions", ["sales_lead_id"], :name => "index_sales_lead_transactions_on_sales_lead_id"
  end
end