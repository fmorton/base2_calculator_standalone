class CreateSalesLeads < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_dates", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.integer "meeting_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.text "name"
      t.integer "meeting_status_id", default: 0, null: false
      t.integer "data_source_status_2", default: 0, null: false
      t.text "status_note"
      t.date "status_note_updated_at"
      t.integer "sales_manager_id", default: 0, null: false
      t.integer "services_manager_id", default: 0, null: false
      t.date "approval_original_issue_at"
      t.date "approval_request_at"
      t.date "approval_at"
      t.integer "approval_status", default: 0, null: false
      t.boolean "approval_held", default: false, null: false
      t.integer "response_to_id", default: 0, null: false
      t.date "response_needed_at"
      t.date "definite_booking_at"
      t.integer "definite_booking_by_id", default: 0, null: false
      t.date "tentative_booking_at"
      t.integer "tentative_booking_by_id", default: 0, null: false
      t.date "lost_booking_at"
      t.integer "lost_booking_by_id", default: 0, null: false
      t.integer "lost_reason_1_id", default: 0, null: false
      t.integer "lost_reason_2_id", default: 0, null: false
      t.integer "lost_reason_3_id", default: 0, null: false
      t.integer "lost_reason_4_id", default: 0, null: false
      t.text "lost_reasons"
      t.integer "contact_id", default: 0, null: false
      t.integer "headquarters_location_id", default: 0, null: false
      t.integer "decision_maker_id", default: 0, null: false
      t.string "decision_maker_other", limit: 64
      t.date "decision_at"
      t.decimal "prospect_of_booking", precision: 12, scale: 2, default: "0.0"
      t.text "website"
      t.integer "meeting_scope_id", default: 0, null: false
      t.integer "lead_source_1_id", default: 0, null: false
      t.integer "attendance", default: 0, null: false
      t.integer "actual_attendance", default: 0, null: false
      t.decimal "economic_impact", precision: 12, scale: 2, default: "0.0"
      t.integer "competing_city_1_id", default: 0, null: false
      t.integer "competing_city_2_id", default: 0, null: false
      t.integer "competing_city_3_id", default: 0, null: false
      t.integer "competing_city_4_id", default: 0, null: false
      t.integer "competing_city_5_id", default: 0, null: false
      t.text "competing_cities"
      t.integer "host_city_id", default: 0, null: false
      t.decimal "housing_percentage_one_bedded", precision: 12, scale: 2, default: "0.0"
      t.decimal "housing_percentage_two_bedded", precision: 12, scale: 2, default: "0.0"
      t.integer "housing_suite_count", default: 0, null: false
      t.integer "housing_by_id", default: 0, null: false
      t.boolean "housing_rate_net_rates", default: false, null: false
      t.boolean "housing_government_rates", default: false, null: false
      t.boolean "housing_fee", default: false, null: false
      t.decimal "housing_rate_requested_low", precision: 12, scale: 2, default: "0.0"
      t.decimal "housing_rate_requested_high", precision: 12, scale: 2, default: "0.0"
      t.integer "peak_rooms_blocked", default: 0, null: false
      t.integer "peak_rooms_picked_up", default: 0, null: false
      t.integer "peak_rooms_committed_1", default: 0, null: false
      t.integer "peak_rooms_committed_2", default: 0, null: false
      t.integer "peak_rooms_committed_3", default: 0, null: false
      t.integer "total_room_nights_blocked", default: 0, null: false
      t.integer "total_room_nights_picked_up", default: 0, null: false
      t.boolean "flexible_dates", default: false, null: false
      t.text "flexible_dates_note"
      t.integer "total_room_nights_previous", default: 0, null: false
      t.text "room_block_string"
      t.text "pick_up_string"
      t.date "meeting_1_at"
      t.date "meeting_2_at"
      t.date "meeting_3_at"
      t.integer "meeting_day_count", default: 0, null: false
      t.date "housing_1_at"
      t.date "housing_2_at"
      t.date "housing_3_at"
      t.integer "housing_day_count", default: 0, null: false
      t.date "pick_up_at"
      t.integer "pick_up_day_count", default: 0, null: false
      t.text "meeting_space_notes"
      t.text "meeting_space_food_and_beverage"
      t.boolean "single_property", default: false, null: false
      t.boolean "uses_convention_center", default: false, null: false
      t.date "move_in_1_at"
      t.date "move_in_2_at"
      t.date "move_in_3_at"
      t.integer "move_in_day_count", default: 0, null: false
      t.integer "exhibit_gsf", default: 0, null: false
      t.integer "exhibit_10x10_count", default: 0, null: false
      t.integer "exhibit_8x10_count", default: 0, null: false
      t.integer "exhibit_location_id", default: 0, null: false
      t.integer "largest_meeting_people_count", default: 0, null: false
      t.integer "breakout_room_count", default: 0, null: false
      t.integer "simultaneous_meetings_count", default: 0, null: false
      t.text "meeting_space_requirement_notes"
      t.integer "food_and_beverage_largest_function_people_count", default: 0, null: false
      t.integer "food_and_beverage_function_count", default: 0, null: false
      t.integer "food_and_beverage_simultaneous_function_count", default: 0, null: false
      t.decimal "food_and_beverage_historical_spending", precision: 12, scale: 2, default: "0.0"
      t.text "food_and_beverage_notes"
      t.date "meeting_space_grid_modified_at"
      t.date "meeting_space_grid_verified_at"
      t.integer "meeting_space_grid_verified_by", default: 0, null: false
      t.integer "meeting_space_grid_status", default: 0, null: false
      t.text "meeting_space_grid_notes"
      t.text "key_bid_element_notes"
      t.text "why_considered_notes"
      t.text "miscellaneous_notes"
      t.text "followup_instructions"
      t.text "decision_process_notes"
      t.text "revision_notes"
      t.text "internal_notes"
      t.boolean "hide_meeting_date", default: false, null: false
      t.text "web_display_name"
      t.text "web_display_date"
      t.text "web_housing_uri"
      t.text "web_housing_text"
      t.text "web_coupon_text"
      t.text "web_image_uri"
      t.text "web_shortcut_uri"
      t.string "headquarters_hotel_1", limit: 128
      t.string "headquarters_hotel_2", limit: 128
      t.date "rfp_issue_at"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.integer "definite_room_nights", default: 0, null: false
      t.integer "tentative_room_nights", default: 0, null: false
      t.integer "lost_room_nights", default: 0, null: false
      t.boolean "hide_from_dashboard", default: false, null: false
      t.boolean "canceled", default: false, null: false
      t.string "data_source_owner_id", limit: 32
      t.boolean "hide_from_calendar", default: false, null: false
      t.integer "delegate_attendance", default: 0, null: false
      t.integer "public_attendance", default: 0, null: false
      t.integer "type_id", default: 0, null: false
      t.integer "spending_event_type_id", default: 0, null: false
      t.text "attendance_string"
      t.integer "total_attendance", default: 0, null: false
      t.boolean "shared", default: false, null: false
      t.integer "peak_attendance", default: 0, null: false
      t.integer "lead_source_2_id", default: 0, null: false
      t.integer "lead_source_3_id", default: 0, null: false
      t.text "services_notes"
      t.index ["data_source_id"], name: "index_meeting_dates_on_data_source_id"
      t.index ["meeting_id"], name: "index_meeting_dates_on_meeting_id"
      t.index ["meeting_status_id"], name: "index_meeting_dates_meeting_status_id"
      t.index ["organization_id"], name: "index_meeting_dates_on_organization_id"
      t.index ["updated_at"], name: "index_meeting_dates_on_updated_at"
    end
  end
end