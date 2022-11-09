class CreateSalesLeadFinancialCommitments < ActiveRecord::Migration
  def change
    create_table :sales_lead_financial_commitments do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "sales_lead_id", :default => 0, :null => false
      t.string   "data_source_id", :limit => 32
      t.decimal  "financial_commitment_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.text     "financial_commitment_note"
      t.decimal  "income_total_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_total_inside_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_total_inside_discounted", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_total_outside_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_assessment", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_assessment_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.text     "income_assessment_description"
      t.decimal  "income_rebate", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_rebate_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.text     "income_rebate_description"
      t.decimal  "income_commission", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_commission_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.text     "income_commission_description"
      t.decimal  "income_other", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_other_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.text     "income_other_description"
      t.decimal  "income_other_percent", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_other_percent_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.text     "income_other_percent_description"
      t.decimal  "income_other_outside", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_other_outside_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.text     "income_other_outside_description"
      t.decimal  "income_other_outside_percent", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "income_other_outside_percent_forecast", :precision => 12, :scale => 2, :default => 0.0
      t.text     "income_other_outside_percent_description"
      t.decimal  "expense_total", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "expense_total_inside", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "expense_total_outside", :precision => 12, :scale => 2, :default => 0.0
      t.text     "expense_total_description"
      t.decimal  "expense_space", :precision => 12, :scale => 2, :default => 0.0
      t.text     "expense_space_description"
      t.decimal  "expense_transportation", :precision => 12, :scale => 2, :default => 0.0
      t.text     "expense_transportation_description"
      t.decimal  "expense_sponsor_food", :precision => 12, :scale => 2, :default => 0.0
      t.text     "expense_sponsor_food_description"
      t.decimal  "expense_cash", :precision => 12, :scale => 2, :default => 0.0
      t.text     "expense_cash_description"
      t.decimal  "expense_other", :precision => 12, :scale => 2, :default => 0.0
      t.text     "expense_other_description"
      t.decimal  "expense_other_outside", :precision => 12, :scale => 2, :default => 0.0
      t.text     "expense_other_outside_description"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "sales_lead_financial_commitments", ["data_source_id"], :name => "index_financials_on_data_source_id"
  end
end