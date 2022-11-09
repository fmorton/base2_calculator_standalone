class UseMeetingDateTerminology < ActiveRecord::Migration
  def up
    remove_index :extended_sales_leads, :name => "index_extended_sales_leads_on_sales_lead_id"
    remove_index :notes, :name => "index_notes_on_sales_lead_id"
    remove_index :sales_lead_approvals, :name => "index_sales_lead_approvals_on_sales_lead_id"
    remove_index :sales_lead_economic_impacts, :name => "index_economic_impacts_on_sales_lead_id"
    remove_index :sales_lead_financial_commitments, :name => "index_financials_on_data_source_id"
    remove_index :sales_lead_meeting_space_status_logs, :name => "index_space_logs_on_data_source_id"
    remove_index :sales_lead_meeting_spaces, :name => "index_meeting_spaces_on_data_source_id"
    remove_index :sales_lead_response_rates, :name => "index_response_rates_on_sales_lead_response_id"
    remove_index :sales_lead_response_status_logs, :name => "index_response_logs_data_source_id"
    remove_index :sales_lead_response_status_logs, :name => "index_response_logs_on_sales_lead_response_id"
    remove_index :sales_lead_responses, :name => "index_responses_on_data_source_id"
    remove_index :sales_lead_responses, :name => "index_responses_on_meeting_id"
    remove_index :sales_lead_responses, :name => "index_responses_on_organization_id"
    remove_index :sales_lead_responses, :name => "index_responses_on_sales_lead_id"
    remove_index :sales_lead_room_flows, :name => "index_room_flows_on_room_flow_week_and_day_1"
    remove_index :sales_lead_room_flows, :name => "index_room_flows_on_sales_lead_id"
    remove_index :sales_lead_status_logs, :name => "index_status_logs_on_data_source_id"
    remove_index :sales_lead_transactions, :name => "index_sales_lead_transactions_on_data_source_id"
    remove_index :sales_lead_transactions, :name => "index_sales_lead_transactions_on_organization_id"
    remove_index :sales_lead_transactions, :name => "index_sales_lead_transactions_on_sales_lead_id"
    remove_index :sales_leads, :name => "index_sales_leads_on_data_source_id"
    remove_index :sales_leads, :name => "index_sales_leads_on_meeting_id"
    remove_index :sales_leads, :name => "index_sales_leads_meeting_status_id"
    remove_index :sales_leads, :name => "index_sales_leads_on_organization_id"

    rename_table :extended_sales_leads, :extended_meeting_dates
    rename_table :sales_lead_approvals, :meeting_date_approvals
    rename_table :sales_lead_economic_impacts, :meeting_date_economic_impacts
    rename_table :sales_lead_financial_commitments, :meeting_date_financial_commitments
    rename_table :sales_lead_meeting_space_status_logs, :meeting_date_meeting_space_status_logs
    rename_table :sales_lead_meeting_spaces, :meeting_date_meeting_spaces
    rename_table :sales_lead_response_rates, :meeting_date_response_rates
    rename_table :sales_lead_response_status_logs, :meeting_date_response_status_logs
    rename_table :sales_lead_responses, :meeting_date_responses
    rename_table :sales_lead_room_flows, :meeting_date_room_flows
    rename_table :sales_lead_status_logs, :meeting_date_status_logs
    rename_table :sales_lead_transactions, :meeting_date_transactions
    rename_table :sales_leads, :meeting_dates

    rename_column :notes, :sales_lead_id, :meeting_date_id
    rename_column :meeting_date_approvals, :sales_lead_id, :meeting_date_id
    rename_column :meeting_date_economic_impacts, :sales_lead_id, :meeting_date_id
    rename_column :meeting_date_financial_commitments, :sales_lead_id, :meeting_date_id
    rename_column :meeting_date_meeting_space_status_logs, :sales_lead_id, :meeting_date_id
    rename_column :meeting_date_meeting_spaces, :sales_lead_id, :meeting_date_id
    rename_column :meeting_date_responses, :sales_lead_id, :meeting_date_id
    rename_column :meeting_date_room_flows, :sales_lead_id, :meeting_date_id
    rename_column :meeting_date_status_logs, :sales_lead_id, :meeting_date_id
    rename_column :meeting_date_transactions, :sales_lead_id, :meeting_date_id
    rename_column :smiley_faces, :sales_lead_id, :meeting_date_id
    rename_column :web_conventions, :sales_lead_id, :meeting_date_id

    rename_column :meeting_date_response_rates, :sales_lead_response_id, :meeting_date_response_id
    rename_column :meeting_date_response_status_logs, :sales_lead_response_id, :meeting_date_response_id

    rename_column :meeting_dates, :hide_sales_lead, :hide_meeting_date

    rename_column :extended_meeting_dates, :sales_lead_id, :meeting_date_id
    rename_column :extended_meeting_dates, :sales_lead_context_organization_id, :meeting_date_context_organization_id
    rename_column :extended_meeting_dates, :sales_lead_organization_id, :meeting_date_organization_id
    rename_column :extended_meeting_dates, :sales_lead_meeting_id, :meeting_date_meeting_id
    rename_column :extended_meeting_dates, :sales_lead_data_source_id, :meeting_date_data_source_id
    rename_column :extended_meeting_dates, :sales_lead_data_source_status, :meeting_date_data_source_status
    rename_column :extended_meeting_dates, :sales_lead_name, :meeting_date_name
    rename_column :extended_meeting_dates, :sales_lead_created_by, :meeting_date_created_by
    rename_column :extended_meeting_dates, :sales_lead_updated_by, :meeting_date_updated_by
    rename_column :extended_meeting_dates, :sales_lead_created_at, :meeting_date_created_at
    rename_column :extended_meeting_dates, :sales_lead_updated_at, :meeting_date_updated_at
    rename_column :extended_meeting_dates, :sales_lead_meeting_status_id, :meeting_date_meeting_status_id
    rename_column :extended_meeting_dates, :sales_lead_meeting_status, :meeting_date_meeting_status
    rename_column :extended_meeting_dates, :sales_lead_data_source_status_2, :meeting_date_data_source_status_2
    rename_column :extended_meeting_dates, :sales_lead_status_note, :meeting_date_status_note
    rename_column :extended_meeting_dates, :sales_lead_status_note_updated_at, :meeting_date_status_note_updated_at
    rename_column :extended_meeting_dates, :sales_lead_sales_manager_id, :meeting_date_sales_manager_id
    rename_column :extended_meeting_dates, :sales_lead_sales_manager, :meeting_date_sales_manager
    rename_column :extended_meeting_dates, :sales_lead_services_manager_id, :meeting_date_services_manager_id
    rename_column :extended_meeting_dates, :sales_lead_services_manager, :meeting_date_services_manager
    rename_column :extended_meeting_dates, :sales_lead_approval_original_issue_at, :meeting_date_approval_original_issue_at
    rename_column :extended_meeting_dates, :sales_lead_approval_request_at, :meeting_date_approval_request_at
    rename_column :extended_meeting_dates, :sales_lead_approval_at, :meeting_date_approval_at
    rename_column :extended_meeting_dates, :sales_lead_approval_status, :meeting_date_approval_status
    rename_column :extended_meeting_dates, :sales_lead_approval_held, :meeting_date_approval_held
    rename_column :extended_meeting_dates, :sales_lead_response_to_id, :meeting_date_response_to_id
    rename_column :extended_meeting_dates, :sales_lead_response_to, :meeting_date_response_to
    rename_column :extended_meeting_dates, :sales_lead_response_needed_at, :meeting_date_response_needed_at
    rename_column :extended_meeting_dates, :sales_lead_definite_booking_at, :meeting_date_definite_booking_at
    rename_column :extended_meeting_dates, :sales_lead_definite_booking_by_id, :meeting_date_definite_booking_by_id
    rename_column :extended_meeting_dates, :sales_lead_definite_booking_by, :meeting_date_definite_booking_by
    rename_column :extended_meeting_dates, :sales_lead_tentative_booking_at, :meeting_date_tentative_booking_at
    rename_column :extended_meeting_dates, :sales_lead_tentative_booking_by_id, :meeting_date_tentative_booking_by_id
    rename_column :extended_meeting_dates, :sales_lead_tentative_booking_by, :meeting_date_tentative_booking_by
    rename_column :extended_meeting_dates, :sales_lead_lost_booking_at, :meeting_date_lost_booking_at
    rename_column :extended_meeting_dates, :sales_lead_lost_booking_by_id, :meeting_date_lost_booking_by_id
    rename_column :extended_meeting_dates, :sales_lead_lost_booking_by, :meeting_date_lost_booking_by
    rename_column :extended_meeting_dates, :sales_lead_lost_reason_1_id, :meeting_date_lost_reason_1_id
    rename_column :extended_meeting_dates, :sales_lead_lost_reason_1, :meeting_date_lost_reason_1
    rename_column :extended_meeting_dates, :sales_lead_lost_reason_2_id, :meeting_date_lost_reason_2_id
    rename_column :extended_meeting_dates, :sales_lead_lost_reason_2, :meeting_date_lost_reason_2
    rename_column :extended_meeting_dates, :sales_lead_lost_reason_3_id, :meeting_date_lost_reason_3_id
    rename_column :extended_meeting_dates, :sales_lead_lost_reason_3, :meeting_date_lost_reason_3
    rename_column :extended_meeting_dates, :sales_lead_lost_reason_4_id, :meeting_date_lost_reason_4_id
    rename_column :extended_meeting_dates, :sales_lead_lost_reason_4, :meeting_date_lost_reason_4
    rename_column :extended_meeting_dates, :sales_lead_lost_reasons, :meeting_date_lost_reasons
    rename_column :extended_meeting_dates, :sales_lead_all_lost_reasons, :meeting_date_all_lost_reasons
    rename_column :extended_meeting_dates, :sales_lead_contact_id, :meeting_date_contact_id
    rename_column :extended_meeting_dates, :sales_lead_headquarters_location_id, :meeting_date_headquarters_location_id
    rename_column :extended_meeting_dates, :sales_lead_headquarters_location, :meeting_date_headquarters_location
    rename_column :extended_meeting_dates, :sales_lead_decision_maker_id, :meeting_date_decision_maker_id
    rename_column :extended_meeting_dates, :sales_lead_decision_maker, :meeting_date_decision_maker
    rename_column :extended_meeting_dates, :sales_lead_decision_maker_other, :meeting_date_decision_maker_other
    rename_column :extended_meeting_dates, :sales_lead_decision_at, :meeting_date_decision_at
    rename_column :extended_meeting_dates, :sales_lead_prospect_of_booking, :meeting_date_prospect_of_booking
    rename_column :extended_meeting_dates, :sales_lead_website, :meeting_date_website
    rename_column :extended_meeting_dates, :sales_lead_meeting_scope_id, :meeting_date_meeting_scope_id
    rename_column :extended_meeting_dates, :sales_lead_meeting_scope, :meeting_date_meeting_scope
    rename_column :extended_meeting_dates, :sales_lead_lead_source_id, :meeting_date_lead_source_id
    rename_column :extended_meeting_dates, :sales_lead_lead_source, :meeting_date_lead_source
    rename_column :extended_meeting_dates, :sales_lead_attendance, :meeting_date_attendance
    rename_column :extended_meeting_dates, :sales_lead_actual_attendance, :meeting_date_actual_attendance
    rename_column :extended_meeting_dates, :sales_lead_economic_impact, :meeting_date_economic_impact
    rename_column :extended_meeting_dates, :sales_lead_competing_city_1_id, :meeting_date_competing_city_1_id
    rename_column :extended_meeting_dates, :sales_lead_competing_city_1, :meeting_date_competing_city_1
    rename_column :extended_meeting_dates, :sales_lead_competing_city_2_id, :meeting_date_competing_city_2_id
    rename_column :extended_meeting_dates, :sales_lead_competing_city_2, :meeting_date_competing_city_2
    rename_column :extended_meeting_dates, :sales_lead_competing_city_3_id, :meeting_date_competing_city_3_id
    rename_column :extended_meeting_dates, :sales_lead_competing_city_3, :meeting_date_competing_city_3
    rename_column :extended_meeting_dates, :sales_lead_competing_city_4_id, :meeting_date_competing_city_4_id
    rename_column :extended_meeting_dates, :sales_lead_competing_city_4, :meeting_date_competing_city_4
    rename_column :extended_meeting_dates, :sales_lead_competing_city_5_id, :meeting_date_competing_city_5_id
    rename_column :extended_meeting_dates, :sales_lead_competing_city_5, :meeting_date_competing_city_5
    rename_column :extended_meeting_dates, :sales_lead_competing_cities, :meeting_date_competing_cities
    rename_column :extended_meeting_dates, :sales_lead_host_city_id, :meeting_date_host_city_id
    rename_column :extended_meeting_dates, :sales_lead_host_city, :meeting_date_host_city
    rename_column :extended_meeting_dates, :sales_lead_housing_percentage_one_bedded, :meeting_date_housing_percentage_one_bedded
    rename_column :extended_meeting_dates, :sales_lead_housing_percentage_two_bedded, :meeting_date_housing_percentage_two_bedded
    rename_column :extended_meeting_dates, :sales_lead_housing_suite_count, :meeting_date_housing_suite_count
    rename_column :extended_meeting_dates, :sales_lead_housing_by_id, :meeting_date_housing_by_id
    rename_column :extended_meeting_dates, :sales_lead_housing_by, :meeting_date_housing_by
    rename_column :extended_meeting_dates, :sales_lead_housing_rate_net_rates, :meeting_date_housing_rate_net_rates
    rename_column :extended_meeting_dates, :sales_lead_housing_government_rates, :meeting_date_housing_government_rates
    rename_column :extended_meeting_dates, :sales_lead_housing_fee, :meeting_date_housing_fee
    rename_column :extended_meeting_dates, :sales_lead_housing_rate_requested_low, :meeting_date_housing_rate_requested_low
    rename_column :extended_meeting_dates, :sales_lead_housing_rate_requested_high, :meeting_date_housing_rate_requested_high
    rename_column :extended_meeting_dates, :sales_lead_peak_rooms_blocked, :meeting_date_peak_rooms_blocked
    rename_column :extended_meeting_dates, :sales_lead_peak_rooms_picked_up, :meeting_date_peak_rooms_picked_up
    rename_column :extended_meeting_dates, :sales_lead_peak_rooms_committed_1, :meeting_date_peak_rooms_committed_1
    rename_column :extended_meeting_dates, :sales_lead_peak_rooms_committed_2, :meeting_date_peak_rooms_committed_2
    rename_column :extended_meeting_dates, :sales_lead_peak_rooms_committed_3, :meeting_date_peak_rooms_committed_3
    rename_column :extended_meeting_dates, :sales_lead_total_room_nights_blocked, :meeting_date_total_room_nights_blocked
    rename_column :extended_meeting_dates, :sales_lead_total_room_nights_picked_up, :meeting_date_total_room_nights_picked_up
    rename_column :extended_meeting_dates, :sales_lead_flexible_dates, :meeting_date_flexible_dates
    rename_column :extended_meeting_dates, :sales_lead_flexible_dates_note, :meeting_date_flexible_dates_note
    rename_column :extended_meeting_dates, :sales_lead_total_room_nights_previous, :meeting_date_total_room_nights_previous
    rename_column :extended_meeting_dates, :sales_lead_room_block_string, :meeting_date_room_block_string
    rename_column :extended_meeting_dates, :sales_lead_pick_up_string, :meeting_date_pick_up_string
    rename_column :extended_meeting_dates, :sales_lead_meeting_1_at, :meeting_date_meeting_1_at
    rename_column :extended_meeting_dates, :sales_lead_meeting_2_at, :meeting_date_meeting_2_at
    rename_column :extended_meeting_dates, :sales_lead_meeting_3_at, :meeting_date_meeting_3_at
    rename_column :extended_meeting_dates, :sales_lead_meeting_day_count, :meeting_date_meeting_day_count
    rename_column :extended_meeting_dates, :sales_lead_housing_1_at, :meeting_date_housing_1_at
    rename_column :extended_meeting_dates, :sales_lead_housing_2_at, :meeting_date_housing_2_at
    rename_column :extended_meeting_dates, :sales_lead_housing_3_at, :meeting_date_housing_3_at
    rename_column :extended_meeting_dates, :sales_lead_housing_day_count, :meeting_date_housing_day_count
    rename_column :extended_meeting_dates, :sales_lead_pick_up_at, :meeting_date_pick_up_at
    rename_column :extended_meeting_dates, :sales_lead_pick_up_day_count, :meeting_date_pick_up_day_count
    rename_column :extended_meeting_dates, :sales_lead_meeting_space_notes, :meeting_date_meeting_space_notes
    rename_column :extended_meeting_dates, :sales_lead_meeting_space_food_and_beverage, :meeting_date_meeting_space_food_and_beverage
    rename_column :extended_meeting_dates, :sales_lead_single_property, :meeting_date_single_property
    rename_column :extended_meeting_dates, :sales_lead_uses_convention_center, :meeting_date_uses_convention_center
    rename_column :extended_meeting_dates, :sales_lead_move_in_1_at, :meeting_date_move_in_1_at
    rename_column :extended_meeting_dates, :sales_lead_move_in_2_at, :meeting_date_move_in_2_at
    rename_column :extended_meeting_dates, :sales_lead_move_in_3_at, :meeting_date_move_in_3_at
    rename_column :extended_meeting_dates, :sales_lead_move_in_day_count, :meeting_date_move_in_day_count
    rename_column :extended_meeting_dates, :sales_lead_exhibit_gsf, :meeting_date_exhibit_gsf
    rename_column :extended_meeting_dates, :sales_lead_exhibit_10x10_count, :meeting_date_exhibit_10x10_count
    rename_column :extended_meeting_dates, :sales_lead_exhibit_8x10_count, :meeting_date_exhibit_8x10_count
    rename_column :extended_meeting_dates, :sales_lead_exhibit_location_id, :meeting_date_exhibit_location_id
    rename_column :extended_meeting_dates, :sales_lead_exhibit_location, :meeting_date_exhibit_location
    rename_column :extended_meeting_dates, :sales_lead_largest_meeting_people_count, :meeting_date_largest_meeting_people_count
    rename_column :extended_meeting_dates, :sales_lead_breakout_room_count, :meeting_date_breakout_room_count
    rename_column :extended_meeting_dates, :sales_lead_simultaneous_meetings_count, :meeting_date_simultaneous_meetings_count
    rename_column :extended_meeting_dates, :sales_lead_meeting_space_requirement_notes, :meeting_date_meeting_space_requirement_notes
    rename_column :extended_meeting_dates, :sales_lead_food_and_beverage_largest_function_people_count, :meeting_date_food_and_beverage_largest_function_people_count
    rename_column :extended_meeting_dates, :sales_lead_food_and_beverage_function_count, :meeting_date_food_and_beverage_function_count
    rename_column :extended_meeting_dates, :sales_lead_food_and_beverage_simultaneous_function_count, :meeting_date_food_and_beverage_simultaneous_function_count
    rename_column :extended_meeting_dates, :sales_lead_food_and_beverage_historical_spending, :meeting_date_food_and_beverage_historical_spending
    rename_column :extended_meeting_dates, :sales_lead_food_and_beverage_notes, :meeting_date_food_and_beverage_notes
    rename_column :extended_meeting_dates, :sales_lead_meeting_space_grid_modified_at, :meeting_date_meeting_space_grid_modified_at
    rename_column :extended_meeting_dates, :sales_lead_meeting_space_grid_verified_at, :meeting_date_meeting_space_grid_verified_at
    rename_column :extended_meeting_dates, :sales_lead_meeting_space_grid_verified_by, :meeting_date_meeting_space_grid_verified_by
    rename_column :extended_meeting_dates, :sales_lead_meeting_space_grid_status, :meeting_date_meeting_space_grid_status
    rename_column :extended_meeting_dates, :sales_lead_meeting_space_grid_notes, :meeting_date_meeting_space_grid_notes
    rename_column :extended_meeting_dates, :sales_lead_key_bid_element_notes, :meeting_date_key_bid_element_notes
    rename_column :extended_meeting_dates, :sales_lead_why_considered_notes, :meeting_date_why_considered_notes
    rename_column :extended_meeting_dates, :sales_lead_miscellaneous_notes, :meeting_date_miscellaneous_notes
    rename_column :extended_meeting_dates, :sales_lead_followup_instructions, :meeting_date_followup_instructions
    rename_column :extended_meeting_dates, :sales_lead_decision_process_notes, :meeting_date_decision_process_notes
    rename_column :extended_meeting_dates, :sales_lead_revision_notes, :meeting_date_revision_notes
    rename_column :extended_meeting_dates, :sales_lead_internal_notes, :meeting_date_internal_notes
    rename_column :extended_meeting_dates, :sales_lead_hide_sales_lead, :meeting_date_hide_meeting_date
    rename_column :extended_meeting_dates, :sales_lead_web_display_name, :meeting_date_web_display_name
    rename_column :extended_meeting_dates, :sales_lead_web_display_date, :meeting_date_web_display_date
    rename_column :extended_meeting_dates, :sales_lead_web_housing_uri, :meeting_date_web_housing_uri
    rename_column :extended_meeting_dates, :sales_lead_web_housing_text, :meeting_date_web_housing_text
    rename_column :extended_meeting_dates, :sales_lead_web_coupon_text, :meeting_date_web_coupon_text
    rename_column :extended_meeting_dates, :sales_lead_web_image_uri, :meeting_date_web_image_uri
    rename_column :extended_meeting_dates, :sales_lead_web_shortcut_uri, :meeting_date_web_shortcut_uri
    rename_column :extended_meeting_dates, :sales_lead_headquarters_hotel_1, :meeting_date_headquarters_hotel_1
    rename_column :extended_meeting_dates, :sales_lead_headquarters_hotel_2, :meeting_date_headquarters_hotel_2
    rename_column :extended_meeting_dates, :sales_lead_rfp_issue_at, :meeting_date_rfp_issue_at
    rename_column :extended_meeting_dates, :economic_impact_sales_lead_id, :economic_impact_meeting_date_id
    rename_column :extended_meeting_dates, :financial_commitment_sales_lead_id, :financial_commitment_meeting_date_id

    add_index "extended_meeting_dates", ["meeting_date_id"], :name => "index_extended_meeting_dates_on_meeting_date_id"
    add_index "notes", ["meeting_date_id"], :name => "index_notes_on_meeting_date_id"
    add_index "meeting_date_approvals", ["meeting_date_id"], :name => "index_meeting_date_approvals_on_meeting_date_id"
    add_index "meeting_date_economic_impacts", ["meeting_date_id"], :name => "index_economic_impacts_on_meeting_date_id"
    add_index "meeting_date_financial_commitments", ["data_source_id"], :name => "index_financials_on_data_source_id"
    add_index "meeting_date_meeting_space_status_logs", ["data_source_id"], :name => "index_space_logs_on_data_source_id"
    add_index "meeting_date_meeting_spaces", ["data_source_id"], :name => "index_meeting_spaces_on_data_source_id"
    add_index "meeting_date_response_rates", ["meeting_date_response_id"], :name => "index_response_rates_on_meeting_date_response_id"
    add_index "meeting_date_response_status_logs", ["data_source_id"], :name => "index_response_logs_data_source_id"
    add_index "meeting_date_response_status_logs", ["meeting_date_response_id"], :name => "index_response_logs_on_meeting_date_response_id"
    add_index "meeting_date_responses", ["data_source_id"], :name => "index_responses_on_data_source_id"
    add_index "meeting_date_responses", ["meeting_id"], :name => "index_responses_on_meeting_id"
    add_index "meeting_date_responses", ["organization_id"], :name => "index_responses_on_organization_id"
    add_index "meeting_date_responses", ["meeting_date_id"], :name => "index_responses_on_meeting_date_id"
    add_index "meeting_date_room_flows", ["room_flow_week_and_day_1"], :name => "index_room_flows_on_room_flow_week_and_day_1"
    add_index "meeting_date_room_flows", ["meeting_date_id"], :name => "index_room_flows_on_meeting_date_id"
    add_index "meeting_date_status_logs", ["data_source_id"], :name => "index_status_logs_on_data_source_id"
    add_index "meeting_date_transactions", ["data_source_id"], :name => "index_meeting_date_transactions_on_data_source_id"
    add_index "meeting_date_transactions", ["organization_id"], :name => "index_meeting_date_transactions_on_organization_id"
    add_index "meeting_date_transactions", ["meeting_date_id"], :name => "index_meeting_date_transactions_on_meeting_date_id"
    add_index "meeting_dates", ["data_source_id"], :name => "index_meeting_dates_on_data_source_id"
    add_index "meeting_dates", ["meeting_id"], :name => "index_meeting_dates_on_meeting_id"
    add_index "meeting_dates", ["meeting_status_id"], :name => "index_meeting_dates_meeting_status_id"
    add_index "meeting_dates", ["organization_id"], :name => "index_meeting_dates_on_organization_id"

    execute "update tagmaps set name='Meeting Date Reason Decline',label='meeting_date_reason_decline' where label ='sales_lead_reason_decline';"
    execute "update tagmaps set label='meeting_date_reason_decline_business_too_rated' where label='sales_lead_reason_decline_business_too_rated';"
    execute "update tagmaps set label='meeting_date_reason_decline_government_rate' where label='sales_lead_reason_decline_government_rate';"
    execute "update tagmaps set label='meeting_date_reason_decline_hotel_rooms_not_available' where label='sales_lead_reason_decline_hotel_rooms_not_available';"
    execute "update tagmaps set label='meeting_date_reason_decline_meeting_space_not_available' where label='sales_lead_reason_decline_meeting_space_not_available';"
    execute "update tagmaps set label='meeting_date_reason_decline_rooms_to_space_ratio_out_of_balance' where label='sales_lead_reason_decline_rooms_to_space_ratio_out_of_balance';"
    execute "update tagmaps set label='meeting_date_reason_decline_waiting_for_better_business' where label='sales_lead_reason_decline_waiting_for_better_business';"
 
    execute "update tagmaps set name='Meeting Date Response Type',label='meeting_date_response_type' where label ='sales_lead_response_type';"
    execute "update tagmaps set label='meeting_date_response_type_visit_indy' where label ='sales_lead_response_type_visit_indy';"
    execute "update tagmaps set label='meeting_date_response_type_icva' where label ='sales_lead_response_type_icva';"
    execute "update tagmaps set label='meeting_date_response_type_client' where label ='sales_lead_response_type_client';"

    execute "update tagmaps set name='Consumer Meeting Dates',label='privilege_consumer_meeting_dates' where label ='privilege_consumer_sales_leads';"
    execute "update tagmaps set name='Meeting Date Responses',label='privilege_meeting_date_responses' where label ='privilege_sales_lead_responses';"
    execute "update tagmaps set name='Meeting Dates',label='privilege_meeting_dates' where label ='privilege_sales_leads';"
  end

  def down
  end
end
