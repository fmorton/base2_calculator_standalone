class CreateSalesLeadApprovals < ActiveRecord::Migration
  def change
    create_table :sales_lead_approvals do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "sales_lead_id", :default => 0, :null => false
      t.integer  "approval_by", :default => 0, :null => false
      t.integer  "approval_status", :default => 0, :null => false
      t.datetime "approval_at"
      t.integer  "position", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "sales_lead_approvals", ["sales_lead_id"], :name => "index_sales_lead_approvals_on_sales_lead_id"
  end
end