class CreateSalesLeadResponses < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_date_responses", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.integer "meeting_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.text "name"
      t.integer "accommodation_id", default: 0, null: false
      t.integer "approval_status", default: 0, null: false
      t.integer "approval_by", default: 0, null: false
      t.integer "approval_sales_manager_id", default: 0, null: false
      t.date "approval_requested_at"
      t.date "approval_updated_at"
      t.text "notes"
      t.text "flexible_date_notes"
      t.boolean "room_rate_guaranteed", default: false, null: false
      t.integer "room_rate_year", default: 0, null: false
      t.decimal "room_rate_max_increase", precision: 12, scale: 2, default: "0.0"
      t.string "complimentary_room_ratio", limit: 32
      t.boolean "income_assessment_approved", default: false, null: false
      t.boolean "income_rebate_approved", default: false, null: false
      t.boolean "income_commission_approved", default: false, null: false
      t.boolean "income_other_approved", default: false, null: false
      t.boolean "income_other_percent_approved", default: false, null: false
      t.boolean "income_other_outside_approved", default: false, null: false
      t.boolean "income_other_outside_percent_approved", default: false, null: false
      t.boolean "income_housing_fee_approved", default: false, null: false
      t.text "decline_reason"
      t.integer "decline_reason_1_id", default: 0, null: false
      t.integer "decline_reason_2_id", default: 0, null: false
      t.integer "decline_reason_3_id", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.string "data_source_owner_id", limit: 32
      t.boolean "selected", default: true, null: false
      t.index ["accommodation_id"], name: "index_meeting_date_responses_on_accommodation_id"
      t.index ["approval_status"], name: "index_meeting_date_responses_on_approval_status"
      t.index ["data_source_id"], name: "index_responses_on_data_source_id"
      t.index ["meeting_date_id"], name: "index_responses_on_meeting_date_id"
      t.index ["meeting_id"], name: "index_responses_on_meeting_id"
      t.index ["organization_id"], name: "index_responses_on_organization_id"
      t.index ["updated_at"], name: "index_meeting_date_responses_on_updated_at"
    end
  end
end