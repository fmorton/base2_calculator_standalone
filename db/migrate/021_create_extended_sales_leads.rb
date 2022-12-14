class CreateExtendedSalesLeads < ActiveRecord::Migration[7.0]
  def change
    create_table "extended_meeting_dates", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.integer "meeting_date_context_organization_id", default: 0, null: false
      t.integer "meeting_date_organization_id", default: 0, null: false
      t.integer "meeting_date_meeting_id", default: 0, null: false
      t.string "meeting_date_data_source_id", limit: 32
      t.integer "meeting_date_data_source_status", default: 0, null: false
      t.text "meeting_date_name"
      t.integer "meeting_date_created_by", default: 0, null: false
      t.integer "meeting_date_updated_by", default: 0, null: false
      t.datetime "meeting_date_created_at", precision: nil
      t.datetime "meeting_date_updated_at", precision: nil
      t.integer "meeting_date_meeting_status_id", default: 0, null: false
      t.string "meeting_date_meeting_status", limit: 64
      t.integer "meeting_date_data_source_status_2", default: 0, null: false
      t.text "meeting_date_status_note"
      t.date "meeting_date_status_note_updated_at"
      t.integer "meeting_date_sales_manager_id", default: 0, null: false
      t.string "meeting_date_sales_manager", limit: 64
      t.integer "meeting_date_services_manager_id", default: 0, null: false
      t.string "meeting_date_services_manager", limit: 64
      t.date "meeting_date_approval_original_issue_at"
      t.date "meeting_date_approval_request_at"
      t.date "meeting_date_approval_at"
      t.integer "meeting_date_approval_status", default: 0, null: false
      t.boolean "meeting_date_approval_held", default: false, null: false
      t.integer "meeting_date_response_to_id", default: 0, null: false
      t.string "meeting_date_response_to", limit: 64
      t.date "meeting_date_response_needed_at"
      t.date "meeting_date_definite_booking_at"
      t.integer "meeting_date_definite_booking_by_id", default: 0, null: false
      t.string "meeting_date_definite_booking_by", limit: 64
      t.date "meeting_date_tentative_booking_at"
      t.integer "meeting_date_tentative_booking_by_id", default: 0, null: false
      t.string "meeting_date_tentative_booking_by", limit: 64
      t.date "meeting_date_lost_booking_at"
      t.integer "meeting_date_lost_booking_by_id", default: 0, null: false
      t.string "meeting_date_lost_booking_by", limit: 64
      t.integer "meeting_date_lost_reason_1_id", default: 0, null: false
      t.string "meeting_date_lost_reason_1", limit: 64
      t.integer "meeting_date_lost_reason_2_id", default: 0, null: false
      t.string "meeting_date_lost_reason_2", limit: 64
      t.integer "meeting_date_lost_reason_3_id", default: 0, null: false
      t.string "meeting_date_lost_reason_3", limit: 64
      t.integer "meeting_date_lost_reason_4_id", default: 0, null: false
      t.string "meeting_date_lost_reason_4", limit: 64
      t.text "meeting_date_lost_reasons"
      t.text "meeting_date_all_lost_reasons"
      t.integer "meeting_date_contact_id", default: 0, null: false
      t.integer "meeting_date_headquarters_location_id", default: 0, null: false
      t.string "meeting_date_headquarters_location", limit: 64
      t.integer "meeting_date_decision_maker_id", default: 0, null: false
      t.string "meeting_date_decision_maker", limit: 64
      t.string "meeting_date_decision_maker_other", limit: 64
      t.date "meeting_date_decision_at"
      t.decimal "meeting_date_prospect_of_booking", precision: 12, scale: 2, default: "0.0"
      t.text "meeting_date_website"
      t.integer "meeting_date_meeting_scope_id", default: 0, null: false
      t.string "meeting_date_meeting_scope", limit: 64
      t.integer "meeting_date_lead_source_1_id", default: 0, null: false
      t.string "meeting_date_lead_source_1", limit: 64
      t.integer "meeting_date_attendance", default: 0, null: false
      t.integer "meeting_date_actual_attendance", default: 0, null: false
      t.decimal "meeting_date_economic_impact", precision: 12, scale: 2, default: "0.0"
      t.integer "meeting_date_competing_city_1_id", default: 0, null: false
      t.string "meeting_date_competing_city_1", limit: 64
      t.integer "meeting_date_competing_city_2_id", default: 0, null: false
      t.string "meeting_date_competing_city_2", limit: 64
      t.integer "meeting_date_competing_city_3_id", default: 0, null: false
      t.string "meeting_date_competing_city_3", limit: 64
      t.integer "meeting_date_competing_city_4_id", default: 0, null: false
      t.string "meeting_date_competing_city_4", limit: 64
      t.integer "meeting_date_competing_city_5_id", default: 0, null: false
      t.string "meeting_date_competing_city_5", limit: 64
      t.text "meeting_date_competing_cities"
      t.integer "meeting_date_host_city_id", default: 0, null: false
      t.string "meeting_date_host_city", limit: 64
      t.decimal "meeting_date_housing_percentage_one_bedded", precision: 12, scale: 2, default: "0.0"
      t.decimal "meeting_date_housing_percentage_two_bedded", precision: 12, scale: 2, default: "0.0"
      t.integer "meeting_date_housing_suite_count", default: 0, null: false
      t.integer "meeting_date_housing_by_id", default: 0, null: false
      t.string "meeting_date_housing_by", limit: 64
      t.boolean "meeting_date_housing_rate_net_rates", default: false, null: false
      t.boolean "meeting_date_housing_government_rates", default: false, null: false
      t.boolean "meeting_date_housing_fee", default: false, null: false
      t.decimal "meeting_date_housing_rate_requested_low", precision: 12, scale: 2, default: "0.0"
      t.decimal "meeting_date_housing_rate_requested_high", precision: 12, scale: 2, default: "0.0"
      t.integer "meeting_date_peak_rooms_blocked", default: 0, null: false
      t.integer "meeting_date_peak_rooms_picked_up", default: 0, null: false
      t.integer "meeting_date_peak_rooms_committed_1", default: 0, null: false
      t.integer "meeting_date_peak_rooms_committed_2", default: 0, null: false
      t.integer "meeting_date_peak_rooms_committed_3", default: 0, null: false
      t.integer "meeting_date_total_room_nights_blocked", default: 0, null: false
      t.integer "meeting_date_total_room_nights_picked_up", default: 0, null: false
      t.boolean "meeting_date_flexible_dates", default: false, null: false
      t.text "meeting_date_flexible_dates_note"
      t.integer "meeting_date_total_room_nights_previous", default: 0, null: false
      t.text "meeting_date_room_block_string"
      t.text "meeting_date_pick_up_string"
      t.date "meeting_date_meeting_1_at"
      t.date "meeting_date_meeting_2_at"
      t.date "meeting_date_meeting_3_at"
      t.integer "meeting_date_meeting_day_count", default: 0, null: false
      t.date "meeting_date_housing_1_at"
      t.date "meeting_date_housing_2_at"
      t.date "meeting_date_housing_3_at"
      t.integer "meeting_date_housing_day_count", default: 0, null: false
      t.date "meeting_date_pick_up_at"
      t.integer "meeting_date_pick_up_day_count", default: 0, null: false
      t.text "meeting_date_meeting_space_notes"
      t.text "meeting_date_meeting_space_food_and_beverage"
      t.boolean "meeting_date_single_property", default: false, null: false
      t.boolean "meeting_date_uses_convention_center", default: false, null: false
      t.date "meeting_date_move_in_1_at"
      t.date "meeting_date_move_in_2_at"
      t.date "meeting_date_move_in_3_at"
      t.integer "meeting_date_move_in_day_count", default: 0, null: false
      t.integer "meeting_date_exhibit_gsf", default: 0, null: false
      t.integer "meeting_date_exhibit_10x10_count", default: 0, null: false
      t.integer "meeting_date_exhibit_8x10_count", default: 0, null: false
      t.integer "meeting_date_exhibit_location_id", default: 0, null: false
      t.string "meeting_date_exhibit_location", limit: 64
      t.integer "meeting_date_largest_meeting_people_count", default: 0, null: false
      t.integer "meeting_date_breakout_room_count", default: 0, null: false
      t.integer "meeting_date_simultaneous_meetings_count", default: 0, null: false
      t.text "meeting_date_meeting_space_requirement_notes"
      t.integer "meeting_date_food_and_beverage_largest_function_people_count", default: 0, null: false
      t.integer "meeting_date_food_and_beverage_function_count", default: 0, null: false
      t.integer "meeting_date_food_and_beverage_simultaneous_function_count", default: 0, null: false
      t.decimal "meeting_date_food_and_beverage_historical_spending", precision: 12, scale: 2, default: "0.0"
      t.text "meeting_date_food_and_beverage_notes"
      t.date "meeting_date_meeting_space_grid_modified_at"
      t.date "meeting_date_meeting_space_grid_verified_at"
      t.integer "meeting_date_meeting_space_grid_verified_by", default: 0, null: false
      t.integer "meeting_date_meeting_space_grid_status", default: 0, null: false
      t.text "meeting_date_meeting_space_grid_notes"
      t.text "meeting_date_key_bid_element_notes"
      t.text "meeting_date_why_considered_notes"
      t.text "meeting_date_miscellaneous_notes"
      t.text "meeting_date_followup_instructions"
      t.text "meeting_date_decision_process_notes"
      t.text "meeting_date_revision_notes"
      t.text "meeting_date_internal_notes"
      t.boolean "meeting_date_hide_meeting_date", default: false, null: false
      t.text "meeting_date_web_display_name"
      t.text "meeting_date_web_display_date"
      t.text "meeting_date_web_housing_uri"
      t.text "meeting_date_web_housing_text"
      t.text "meeting_date_web_coupon_text"
      t.text "meeting_date_web_image_uri"
      t.text "meeting_date_web_shortcut_uri"
      t.string "meeting_date_headquarters_hotel_1", limit: 128
      t.string "meeting_date_headquarters_hotel_2", limit: 128
      t.date "meeting_date_rfp_issue_at"
      t.integer "organization_id", default: 0, null: false
      t.string "organization_name", limit: 255
      t.datetime "organization_created_at", precision: nil
      t.datetime "organization_updated_at", precision: nil
      t.string "organization_key", limit: 32
      t.integer "organization_parent_id", default: 0, null: false
      t.text "organization_secure_locations"
      t.boolean "organization_secure_with_ssl"
      t.integer "organization_created_by", default: 0, null: false
      t.integer "organization_updated_by", default: 0, null: false
      t.string "organization_data_source_id", limit: 32
      t.string "organization_sort_name", limit: 128
      t.string "organization_former_name", limit: 128
      t.string "organization_acronym", limit: 16
      t.string "organization_phone_main", limit: 64
      t.string "organization_phone_fax", limit: 64
      t.string "organization_phone_toll_free", limit: 64
      t.string "organization_expedia_id", limit: 32
      t.string "organization_passkey_id", limit: 32
      t.text "organization_website"
      t.string "organization_email", limit: 64
      t.string "organization_coordinates", limit: 64
      t.text "organization_keywords"
      t.string "organization_shortcut_uri", limit: 128
      t.string "organization_view_type", limit: 32
      t.text "organization_server_names"
      t.string "organization_default_layout", limit: 32
      t.string "organization_label", limit: 32
      t.string "organization_default_controller", limit: 128
      t.string "organization_default_action", limit: 128
      t.string "organization_unknown_controller", limit: 128
      t.string "organization_unknown_action", limit: 128
      t.string "organization_unknown_layout", limit: 32
      t.integer "organization_data_source_status", default: 0, null: false
      t.boolean "organization_hyphen_view_type", default: false, null: false
      t.datetime "organization_sync_at", precision: nil
      t.text "organization_image_uri"
      t.text "organization_meta_title"
      t.text "organization_meta_description"
      t.text "organization_meta_keywords"
      t.text "organization_meta_canonical_uri"
      t.string "organization_aci_organization_id", limit: 32
      t.string "organization_aci_venue_id", limit: 32
      t.integer "organization_context_organization_id", default: 0, null: false
      t.integer "organization_status", default: 0, null: false
      t.integer "meeting_id", default: 0, null: false
      t.integer "meeting_context_organization_id", default: 0, null: false
      t.integer "meeting_organization_id", default: 0, null: false
      t.string "meeting_data_source_id", limit: 32
      t.integer "meeting_data_source_status", default: 0, null: false
      t.text "meeting_name"
      t.date "meeting_qualified_at"
      t.integer "meeting_qualified_by", default: 0, null: false
      t.integer "meeting_qualified_by_author_id", default: 0, null: false
      t.integer "meeting_created_by", default: 0, null: false
      t.integer "meeting_updated_by", default: 0, null: false
      t.datetime "meeting_created_at", precision: nil
      t.datetime "meeting_updated_at", precision: nil
      t.text "meeting_description"
      t.integer "economic_impact_id", default: 0, null: false
      t.integer "economic_impact_context_organization_id", default: 0, null: false
      t.integer "economic_impact_meeting_date_id", default: 0, null: false
      t.integer "economic_impact_attendance_nights", default: 0, null: false
      t.decimal "economic_impact_average_rate", precision: 12, scale: 2, default: "0.0"
      t.integer "economic_impact_average_nightly_attendance", default: 0, null: false
      t.integer "economic_impact_calculated_gsf", default: 0, null: false
      t.decimal "economic_impact_calculated_people_per_room", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_net_income", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_net_spending_air_traffic", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_net_spending_entertainment", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_net_spending_food", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_net_spending_other", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_net_spending_room", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_net_spending_shopping", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_net_spending_ground_transportation", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_spending_air_traffic", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_spending_entertainment", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_spending_food", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_spending_other", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_spending_room", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_spending_shopping", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_spending_ground_transportation", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_event_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_with_induced", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_direct", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_direct_jobs", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_direct_va", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_direct_wages", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_indirect", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_indirect_jobs", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_indirect_va", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_indirect_wages", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_induced", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_induced_jobs", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_induced_va", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_impact_induced_wages", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_net_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_to_cib", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_to_cib_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_total_tax_to_cib_operations", precision: 12, scale: 2, default: "0.0"
      t.integer "economic_impact_created_by", default: 0, null: false
      t.integer "economic_impact_updated_by", default: 0, null: false
      t.datetime "economic_impact_created_at", precision: nil
      t.datetime "economic_impact_updated_at", precision: nil
      t.string "economic_impact_tax_1_label", limit: 64
      t.decimal "economic_impact_tax_1_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_1_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_1_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_1_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_1_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_1_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_1_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_1_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_1_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_1_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_2_label", limit: 64
      t.decimal "economic_impact_tax_2_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_2_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_2_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_2_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_2_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_2_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_2_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_2_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_2_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_2_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_3_label", limit: 64
      t.decimal "economic_impact_tax_3_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_3_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_3_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_3_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_3_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_3_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_3_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_3_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_3_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_3_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_4_label", limit: 64
      t.decimal "economic_impact_tax_4_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_4_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_4_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_4_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_4_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_4_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_4_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_4_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_4_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_4_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_5_label", limit: 64
      t.decimal "economic_impact_tax_5_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_5_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_5_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_5_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_5_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_5_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_5_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_5_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_5_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_5_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_6_label", limit: 64
      t.decimal "economic_impact_tax_6_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_6_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_6_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_6_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_6_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_6_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_6_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_6_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_6_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_6_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_7_label", limit: 64
      t.decimal "economic_impact_tax_7_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_7_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_7_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_7_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_7_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_7_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_7_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_7_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_7_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_7_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_8_label", limit: 64
      t.decimal "economic_impact_tax_8_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_8_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_8_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_8_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_8_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_8_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_8_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_8_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_8_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_8_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_9_label", limit: 64
      t.decimal "economic_impact_tax_9_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_9_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_9_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_9_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_9_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_9_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_9_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_9_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_9_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_9_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_10_label", limit: 64
      t.decimal "economic_impact_tax_10_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_10_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_10_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_10_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_10_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_10_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_10_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_10_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_10_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_10_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_11_label", limit: 64
      t.decimal "economic_impact_tax_11_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_11_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_11_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_11_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_11_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_11_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_11_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_11_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_11_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_11_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_12_label", limit: 64
      t.decimal "economic_impact_tax_12_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_12_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_12_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_12_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_12_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_12_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_12_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_12_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_12_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_12_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_13_label", limit: 64
      t.decimal "economic_impact_tax_13_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_13_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_13_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_13_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_13_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_13_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_13_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_13_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_13_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_13_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_14_label", limit: 64
      t.decimal "economic_impact_tax_14_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_14_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_14_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_14_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_14_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_14_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_14_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_14_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_14_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_14_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_15_label", limit: 64
      t.decimal "economic_impact_tax_15_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_15_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_15_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_15_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_15_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_15_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_15_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_15_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_15_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_15_total", precision: 12, scale: 2, default: "0.0"
      t.string "economic_impact_tax_16_label", limit: 64
      t.decimal "economic_impact_tax_16_entity_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_16_entity_1_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_16_entity_1_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_16_entity_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_16_spending", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_16_local", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_16_local_all", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_16_state", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_16_federal", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_tax_16_total", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_economic_attendance", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_percent_local_attendees", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_spending_air_traffic_lever", precision: 12, scale: 2, default: "0.0"
      t.text "economic_impact_spending_air_traffic_lever_note"
      t.decimal "economic_impact_spending_entertainment_lever", precision: 12, scale: 2, default: "0.0"
      t.text "economic_impact_spending_entertainment_lever_note"
      t.decimal "economic_impact_spending_food_lever", precision: 12, scale: 2, default: "0.0"
      t.text "economic_impact_spending_food_lever_note"
      t.decimal "economic_impact_spending_room_lever", precision: 12, scale: 2, default: "0.0"
      t.text "economic_impact_spending_room_lever_note"
      t.decimal "economic_impact_spending_shopping_lever", precision: 12, scale: 2, default: "0.0"
      t.text "economic_impact_spending_shopping_lever_note"
      t.decimal "economic_impact_spending_ground_transportation_lever", precision: 12, scale: 2, default: "0.0"
      t.text "economic_impact_spending_ground_transportation_lever_note"
      t.decimal "economic_impact_cc_adjustment_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_equipment_direct_cost", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_equipment_discount_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_equipment_discount_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_equipment_gross_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_equipment_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_equipment_standard_rate", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_food_and_beverage_direct_cost", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_food_and_beverage_discount_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_food_and_beverage_discount_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_food_and_beverage_gross_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_food_and_beverage_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_food_and_beverage_standard_rate", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_internet_direct_cost", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_internet_discount_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_internet_discount_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_internet_gross_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_internet_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_internet_standard_rate", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_labor_reimbursement_direct_cost", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_labor_reimbursement_discount_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_labor_reimbursement_discount_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_labor_reimbursement_gross_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_labor_reimbursement_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_labor_reimbursement_standard_rate", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_other_direct_cost", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_other_discount_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_other_discount_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_other_gross_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_other_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_other_standard_rate", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_overhead_direct_cost", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_overhead_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_space_rental_direct_cost", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_space_rental_discount_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_space_rental_discount_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_space_rental_gross_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_space_rental_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_space_rental_standard_rate", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_direct_cost", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_discount_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_discount_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_gross_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_gross_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_net_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_net_revenue_debt", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_net_revenue_operations", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_net_revenue_per_gsf", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_net_revenue_per_gsf_all_space", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_standard_rate", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_utilities_direct_cost", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_utilities_discount_1", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_utilities_discount_2", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_utilities_gross_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_utilities_net_revenue", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_utilities_standard_rate", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_impact_convention_operations_direct_total", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_impact_convention_operations_indirect_total", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_impact_convention_operations_induced_total", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_impact_convention_operations_jobs_total", precision: 12, scale: 2, default: "0.0"
      t.integer "economic_impact_calculated_gsf_all_space", default: 0, null: false
      t.integer "financial_commitment_id", default: 0, null: false
      t.integer "financial_commitment_context_organization_id", default: 0, null: false
      t.integer "financial_commitment_meeting_date_id", default: 0, null: false
      t.string "financial_commitment_data_source_id", limit: 32
      t.decimal "financial_commitment_financial_commitment_forecast", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_income_total_forecast", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_income_total_inside_forecast", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_income_total_inside_discounted", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_income_total_outside_forecast", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_income_assessment", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_income_assessment_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_income_assessment_description"
      t.decimal "financial_commitment_income_rebate", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_income_rebate_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_income_rebate_description"
      t.text "financial_commitment_income_commission", default: "0.0"
      t.decimal "financial_commitment_income_commission_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_income_commission_description"
      t.decimal "financial_commitment_income_other", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_income_other_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_income_other_description"
      t.decimal "financial_commitment_income_other_percent", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_income_other_percent_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_income_other_percent_description"
      t.decimal "financial_commitment_income_other_outside", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_income_other_outside_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_income_other_outside_description"
      t.text "financial_commitment_income_other_outside_percent", default: "0.0"
      t.decimal "financial_commitment_income_other_outside_percent_forecast", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_income_other_outside_percent_description"
      t.decimal "financial_commitment_expense_total", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_expense_total_inside", precision: 12, scale: 2, default: "0.0"
      t.decimal "financial_commitment_expense_total_outside", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_expense_total_description"
      t.decimal "financial_commitment_expense_space", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_expense_space_description"
      t.decimal "financial_commitment_expense_transportation", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_expense_transportation_description"
      t.decimal "financial_commitment_expense_sponsor_food", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_expense_sponsor_food_description"
      t.decimal "financial_commitment_expense_cash", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_expense_cash_description"
      t.decimal "financial_commitment_expense_other", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_expense_other_description"
      t.decimal "financial_commitment_expense_other_outside", precision: 12, scale: 2, default: "0.0"
      t.text "financial_commitment_expense_other_outside_description"
      t.integer "financial_commitment_created_by", default: 0, null: false
      t.integer "financial_commitment_updated_by", default: 0, null: false
      t.datetime "financial_commitment_created_at", precision: nil
      t.datetime "financial_commitment_updated_at", precision: nil
      t.text "financial_commitment_financial_commitment_note"
      t.string "organization_address1", limit: 128
      t.string "organization_address2", limit: 128
      t.string "organization_address3", limit: 128
      t.string "organization_city", limit: 64
      t.string "organization_state", limit: 32
      t.string "organization_zip", limit: 32
      t.string "organization_city_state_zip", limit: 128
      t.string "contact_specific_address1", limit: 128
      t.string "contact_specific_address2", limit: 128
      t.string "contact_specific_address3", limit: 128
      t.string "contact_specific_city", limit: 64
      t.string "contact_specific_state", limit: 32
      t.string "contact_specific_zip", limit: 32
      t.string "contact_specific_city_state_zip", limit: 128
      t.string "contact_address1", limit: 128
      t.string "contact_address2", limit: 128
      t.string "contact_address3", limit: 128
      t.string "contact_city", limit: 64
      t.string "contact_state", limit: 32
      t.string "contact_zip", limit: 32
      t.string "contact_city_state_zip", limit: 128
      t.string "contact_alternate_email", limit: 64
      t.date "contact_birthday_at"
      t.integer "contact_data_source_id", default: 0, null: false
      t.integer "contact_data_source_status", default: 0, null: false
      t.string "contact_email", limit: 64
      t.string "contact_encrypted_password", limit: 64
      t.text "contact_name"
      t.text "contact_name_first"
      t.text "contact_name_last"
      t.string "contact_name_middle", limit: 32
      t.string "contact_nickname", limit: 32
      t.string "contact_phone_home", limit: 64
      t.string "contact_phone_mobile", limit: 64
      t.string "contact_phone_work", limit: 64
      t.string "contact_title", limit: 128
      t.integer "contact_organization_id", default: 0, null: false
      t.string "contact_organization_name", limit: 255
      t.datetime "contact_organization_created_at", precision: nil
      t.datetime "contact_organization_updated_at", precision: nil
      t.string "contact_organization_key", limit: 32
      t.integer "contact_organization_parent_id", default: 0, null: false
      t.text "contact_organization_secure_locations"
      t.boolean "contact_organization_secure_with_ssl"
      t.integer "contact_organization_created_by", default: 0, null: false
      t.integer "contact_organization_updated_by", default: 0, null: false
      t.string "contact_organization_data_source_id", limit: 32
      t.string "contact_organization_sort_name", limit: 128
      t.string "contact_organization_former_name", limit: 128
      t.string "contact_organization_acronym", limit: 16
      t.string "contact_organization_phone_main", limit: 64
      t.string "contact_organization_phone_fax", limit: 64
      t.string "contact_organization_phone_toll_free", limit: 64
      t.string "contact_organization_expedia_id", limit: 32
      t.string "contact_organization_passkey_id", limit: 32
      t.text "contact_organization_website"
      t.string "contact_organization_email", limit: 64
      t.string "contact_organization_coordinates", limit: 64
      t.text "contact_organization_keywords"
      t.string "contact_organization_shortcut_uri", limit: 128
      t.string "contact_organization_view_type", limit: 32
      t.text "contact_organization_server_names"
      t.string "contact_organization_default_layout", limit: 32
      t.string "contact_organization_label", limit: 32
      t.string "contact_organization_default_controller", limit: 128
      t.string "contact_organization_default_action", limit: 128
      t.string "contact_organization_unknown_controller", limit: 128
      t.string "contact_organization_unknown_action", limit: 128
      t.string "contact_organization_unknown_layout", limit: 32
      t.integer "contact_organization_data_source_status", default: 0, null: false
      t.boolean "contact_organization_hyphen_view_type", default: false, null: false
      t.datetime "contact_organization_sync_at", precision: nil
      t.text "contact_organization_image_uri"
      t.text "contact_organization_meta_title"
      t.text "contact_organization_meta_description"
      t.text "contact_organization_meta_keywords"
      t.text "contact_organization_meta_canonical_uri"
      t.string "contact_organization_aci_organization_id", limit: 32
      t.string "contact_organization_aci_venue_id", limit: 32
      t.integer "contact_organization_context_organization_id", default: 0, null: false
      t.integer "contact_organization_status", default: 0, null: false
      t.string "contact_organization_address1", limit: 128
      t.string "contact_organization_address2", limit: 128
      t.string "contact_organization_address3", limit: 128
      t.string "contact_organization_city", limit: 64
      t.string "contact_organization_state", limit: 32
      t.string "contact_organization_zip", limit: 32
      t.string "contact_organization_city_state_zip", limit: 128
      t.integer "organization_county_id", default: 0, null: false
      t.integer "contact_organization_county_id", default: 0
      t.string "organization_cross_street_1", limit: 96
      t.string "organization_cross_street_2", limit: 96
      t.string "contact_organization_cross_street_1", limit: 96
      t.string "contact_organization_cross_street_2", limit: 96
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.integer "meeting_date_definite_room_nights", default: 0, null: false
      t.integer "meeting_date_tentative_room_nights", default: 0, null: false
      t.integer "meeting_date_lost_room_nights", default: 0, null: false
      t.text "organization_comments"
      t.string "contact_phone_fax", limit: 64
      t.text "contact_organization_comments"
      t.boolean "meeting_date_hide_from_dashboard", default: false, null: false
      t.text "organization_temporary_image_uri"
      t.text "contact_organization_temporary_image_uri"
      t.integer "contact_courtesy_title_id", default: 0, null: false
      t.string "contact_salutation", limit: 64
      t.boolean "organization_umbrella", default: false
      t.boolean "contact_organization_umbrella", default: false
      t.boolean "organization_meta_disallow", default: false, null: false
      t.boolean "contact_organization_meta_disallow", default: false, null: false
      t.boolean "meeting_date_canceled", default: false, null: false
      t.boolean "organization_searchable", default: true, null: false
      t.boolean "contact_organization_searchable", default: true, null: false
      t.datetime "contact_organization_coordinates_updated_at", precision: nil
      t.datetime "organization_coordinates_updated_at", precision: nil
      t.string "meeting_data_source_owner_id", limit: 32
      t.string "meeting_date_data_source_owner_id", limit: 32
      t.string "organization_data_source_owner_id", limit: 32
      t.string "contact_data_source_owner_id", limit: 32
      t.string "contact_organization_data_source_owner_id", limit: 32
      t.boolean "meeting_date_hide_from_calendar", default: false, null: false
      t.integer "meeting_date_delegate_attendance", default: 0, null: false
      t.integer "meeting_date_public_attendance", default: 0, null: false
      t.string "organization_twitter_handle", limit: 32
      t.string "contact_organization_twitter_handle", limit: 32
      t.string "contact_address_name", limit: 255
      t.string "contact_organization_address_name", limit: 255
      t.string "contact_specific_address_name", limit: 255
      t.string "organization_address_name", limit: 255
      t.integer "meeting_date_type_id", default: 0, null: false
      t.decimal "economic_impact_cc_adjustment_direct_cost", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_direct_cost_all_space", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_net_revenue_all_space", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_net_revenue_operations_all_space", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_net_revenue_debt_all_space", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_total_net_net_revenue_all_space", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_overhead_direct_cost_all_space", precision: 12, scale: 2, default: "0.0"
      t.decimal "economic_impact_cc_overhead_direct_cost_difference", precision: 12, scale: 2, default: "0.0"
      t.text "economic_impact_cc_equipment_description"
      t.text "economic_impact_cc_food_and_beverage_description"
      t.text "economic_impact_cc_internet_description"
      t.text "economic_impact_cc_labor_reimbursement_description"
      t.text "economic_impact_cc_other_description"
      t.text "economic_impact_cc_space_rental_description"
      t.text "economic_impact_cc_utilities_description"
      t.text "organization_yelp_id"
      t.text "contact_organization_yelp_id"
      t.text "contact_organization_alternate_names"
      t.text "organization_alternate_names"
      t.string "organization_twitter_last_id", limit: 64
      t.string "contact_organization_twitter_last_id", limit: 64
      t.integer "meeting_date_spending_event_type_id", default: 0, null: false
      t.text "meeting_date_attendance_string"
      t.integer "meeting_date_total_attendance", default: 0, null: false
      t.integer "contact_approval_type_id", default: 0, null: false
      t.boolean "contact_use_parent_address", default: true
      t.boolean "contact_use_parent_shipping_address", default: true
      t.text "contact_email_signature"
      t.boolean "meeting_date_shared", default: false, null: false
      t.integer "meeting_date_peak_attendance", default: 0, null: false
      t.text "organization_tracking_content"
      t.text "contact_organization_tracking_content"
      t.date "organization_tracking_start_at"
      t.date "contact_organization_tracking_start_at"
      t.date "organization_tracking_end_at"
      t.date "contact_organization_tracking_end_at"
      t.integer "meeting_date_lead_source_2_id", default: 0, null: false
      t.integer "meeting_date_lead_source_3_id", default: 0, null: false
      t.string "meeting_date_lead_source_2", limit: 64
      t.string "meeting_date_lead_source_3", limit: 64
      t.integer "organization_ad_type_id", default: 0, null: false
      t.integer "contact_organization_ad_type_id", default: 0, null: false
      t.text "meeting_date_services_notes"
      t.text "contact_organization_yelp_api_id"
      t.text "organization_yelp_api_id"
      t.text "contact_organization_website_tiny_redirect"
      t.text "organization_website_tiny_redirect"
      t.index ["meeting_date_id"], name: "index_extended_meeting_dates_on_meeting_date_id"
      t.index ["meeting_date_meeting_id"], name: "index_extended_meeting_dates_on_meeting_date_meeting_id"
      t.index ["organization_id"], name: "index_extended_meeting_dates_on_organization_id"
    end
  end
end