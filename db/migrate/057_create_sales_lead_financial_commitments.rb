class CreateSalesLeadFinancialCommitments < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_date_financial_commitments", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.decimal "financial_commitment_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_note"
      t.decimal "income_total_forecast", precision: 12, scale: 2, default: "0.0"
      t.decimal "income_total_inside_forecast", precision: 12, scale: 2, default: "0.0"
      t.decimal "income_total_inside_discounted", precision: 12, scale: 2, default: "0.0"
      t.decimal "income_total_outside_forecast", precision: 12, scale: 2, default: "0.0"
      t.decimal "income_assessment", precision: 12, scale: 2, default: "0.0"
      t.decimal "income_assessment_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "income_assessment_description"
      t.decimal "income_rebate", precision: 12, scale: 2, default: "0.0"
      t.decimal "income_rebate_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "income_rebate_description"
      t.text "income_commission", default: "0.0"
      t.decimal "income_commission_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "income_commission_description"
      t.decimal "income_other", precision: 12, scale: 2, default: "0.0"
      t.decimal "income_other_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "income_other_description"
      t.decimal "income_other_percent", precision: 12, scale: 2, default: "0.0"
      t.decimal "income_other_percent_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "income_other_percent_description"
      t.decimal "income_other_outside", precision: 12, scale: 2, default: "0.0"
      t.decimal "income_other_outside_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "income_other_outside_description"
      t.text "income_other_outside_percent", default: "0.0"
      t.decimal "income_other_outside_percent_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "income_other_outside_percent_description"
      t.decimal "expense_total", precision: 12, scale: 2, default: "0.0"
      t.decimal "expense_total_inside", precision: 12, scale: 2, default: "0.0"
      t.decimal "expense_total_outside", precision: 12, scale: 2, default: "0.0"
      t.text "expense_total_description"
      t.decimal "expense_space", precision: 12, scale: 2, default: "0.0"
      t.text "expense_space_description"
      t.decimal "expense_transportation", precision: 12, scale: 2, default: "0.0"
      t.text "expense_transportation_description"
      t.decimal "expense_sponsor_food", precision: 12, scale: 2, default: "0.0"
      t.text "expense_sponsor_food_description"
      t.decimal "expense_cash", precision: 12, scale: 2, default: "0.0"
      t.text "expense_cash_description"
      t.decimal "expense_other", precision: 12, scale: 2, default: "0.0"
      t.text "expense_other_description"
      t.decimal "expense_other_outside", precision: 12, scale: 2, default: "0.0"
      t.text "expense_other_outside_description"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["data_source_id"], name: "index_financials_on_data_source_id"
      t.index ["meeting_date_id"], name: "index_meeting_date_id"
    end
  end
end