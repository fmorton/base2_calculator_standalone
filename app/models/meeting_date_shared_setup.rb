#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
require_dependency "#{Base2Cms::Engine.root}/app/models/setup"

class MeetingDateSharedSetup < Setup
  def meeting_date_shared_setup(context, o)
    @organization = o.organization
    @meeting = o.meeting
    @organization_address = @organization.address unless @organization.nil?
    @consumer_organization = @organization.consumer_organization unless @organization.nil?
    @meetings = (@organization.meetings.active_data_source.order(:name) rescue [])
    @people = @organization.connected_people.active_data_source rescue []
    @sales_managers = Person.convention_sales_managers
    @services_managers = Person.convention_services_managers
    @convention_center_sales_managers = Person.convention_center_sales_managers
    @convention_center_attachments = o.convention_center_attachments
    @group_tour_guides = Person.group_tour_guides
    @meeting_date_hotel_viewable_notes = o.hotel_viewable_notes_with_attachments

    @meeting_date_status_logs = o.meeting_date_status_logs.default_order

    @contact = o.contact
    @contact_address = (@contact.address rescue nil)

    @address = @contact_address
    @address = @organization_address if @address.empty?

    @group_tour_dates = o.meeting_date_group_tour_dates.order("meeting_date_group_tour_dates.tour_at,meeting_date_group_tour_dates.tour_time").to_a

    @meeting_status_values = Tagmap.meeting_status_values.to_a
    @state_provinces = ContextCache.tagmap("state_province")
    @location_city = ContextCache.tagmap("location_city", :nocache => true)
    @meeting_decision_maker = ContextCache.tagmap("meeting_decision_maker")
    @meeting_scope = ContextCache.tagmap("meeting_scope")
    @meeting_lead_source = ContextCache.tagmap("meeting_lead_source")
    @meeting_housing_by = ContextCache.tagmap("meeting_housing_by")
    @meeting_date_response_type = ContextCache.tagmap("meeting_date_response_type")
    @meeting_exhibit_location = ContextCache.tagmap("meeting_exhibit_location")
    @meeting_reason_cancellation = ContextCache.tagmap("meeting_reason_cancellation")
    @group_tour_types = ContextCache.tagmap("group_tour_type")
    @spending_event_types = ContextCache.tagmap("spending_event_type")

    @all_meeting_dates = Meeting.all_meeting_dates(o.meeting_id)
    @all_meeting_date_ids = @all_meeting_dates.collect { |o| o.id }
    @all_meetings_group_history = MeetingDate.context_scope.where(:id => @all_meeting_date_ids).select("id,room_block_string").to_a.get_hash(:id, :room_block_string)

    #TODO: view_map based on meeting_status?
    context.active_view_map.set_view_map_rules(nil)

    context.active_navigation.replace_link("Go", @organization.website_uri) unless @organization.nil?

    @view_map_meeting_date_essentials = view_map_array("view_map.meeting_dates", "meeting_date_essentials", "dates", "general", "sales_services")
    @view_map_meeting_date_approvals = view_map_array("view_map.meeting_dates", "approval", "meeting_date_response_status_log", "meeting_date_status_log")
    @view_map_meeting_date_room_block = view_map_array("view_map.meeting_dates", "rooms", "room_block", "room_pick_up", "group_history")
    @view_map_meeting_date_financial_commitments = view_map_array("view_map.meeting_dates", "income", "expense", "financial_commitment")
    @view_map_meeting_date_hotel_viewable_notes = view_map_array("view_map.meeting_dates", "hotel_viewable_notes")
    @view_map_meeting_date_economic_impact = view_map_array("view_map.meeting_dates", "economic_impact_input", "economic_impact_convention_center", "economic_visitor_spending", "economic_tax_calculations")
    @view_map_meeting_date_meeting_space = view_map_array("view_map.meeting_dates", "exhibit_space_requirements", "meeting_space_requirements", "food_and_beverage")
    @view_map_meeting_date_convention_center = view_map_array("view_map.meeting_dates", "convention_center_space", "convention_center_response_history", "convention_center_response", "convention_center_attachments")
    @view_map_meeting_date_notes = view_map_array("view_map.meeting_dates", "notes")
    @view_map_meeting_date_hotels = view_map_array("view_map.meeting_dates", "hotel_response_list")
    @view_map_meeting_date_group_tour = view_map_array("view_map.meeting_dates", "group_tour", "group_tour_dates")
    @view_map_meeting_date_approval_responses = view_map_array("view_map.meeting_dates", "approval_responses", "booking_dates")
    @view_map_meeting_date_meeting_web_site = view_map_array("view_map.meeting_dates", "meeting_web_site")
    @view_map_meeting_date_category = view_map_array("view_map.meeting_dates", "meeting_date_category")

    @something_available_approval = [ 'approval_held', 'response_needed_at', 'response_to_id', 'sales_manager_id', 'services_manager_id', 'hotel_viewable_notes' ]
    @something_available_dates = [ 'meeting_1_at', 'meeting_2_at', 'meeting_3_at', 'flexible_dates_note', 'flexible_dates' ]
    @something_available_essentials = [ 'lost_reason_1_id', 'lost_reasons', 'lost_reason_2_id', 'status_note', 'status_note_updated_at',
      'delegate_attendance', 'public_attendance', 'attendance', 'actual_attendance', 'economic_impact', 'meeting_scope_id', 'market_segment_id', 'lead_source_1_id', 'lead_source_2_id', 'lead_source_3_id',
      'host_city_id', 'headquarters_hotel_1', 'headquarters_hotel_2', 'contact_id', 'headquarters_location_id', 'decision_at', 'prospect_of_booking', 'decision_maker_id',
      'decision_maker_other', 'competing_city_1_id', 'competing_city_2_id', 'competing_city_3_id', 'competing_city_4_id', 'competing_city_5_id',
      'competing_cities', 'website', 'name', 'meeting_status_id' ]
    @something_available_rooms = [ 'peak_rooms_blocked', 'peak_rooms_picked_up', 'peak_rooms_committed_1', 'peak_rooms_committed_2', 'peak_rooms_committed_3',
      'housing_rate_requested_low', 'housing_rate_requested_high', 'housing_percentage_one_bedded', 'housing_percentage_two_bedded', 'housing_suite_count',
      'housing_by_id', 'housing_fee', 'housing_government_rates', 'housing_rate_net_rates' ]
    @something_available_room_block = [ 'housing_1_at', 'housing_2_at', 'housing_3_at', 'total_room_nights_blocked' ]
    @something_available_room_pick_up = [ 'pick_up_at', 'total_room_nights_picked_up' ]
    @something_available_financial_commitments = [ 'financial_commitment_forecast', 'financial_commitment_note' ]
    @something_available_exhibit_space_requirements = [ 'exhibit_gsf', 'exhibit_location_id', 'exhibit_10x10_count', 'exhibit_8x10_count' ]
    @something_available_meeting_space_requirements = [ 'largest_meeting_people_count', 'breakout_room_count', 'simultaneous_meetings_count', 'meeting_space_requirement_notes' ]
    @something_available_food_and_beverage = [ 'food_and_beverage_largest_function_people_count', 'food_and_beverage_function_count', 'single_property',
      'food_and_beverage_simultaneous_function_count', 'food_and_beverage_historical_spending', 'food_and_beverage_notes' ]
    @something_available_convention_center_space = [ 'move_in_1_at', 'move_in_2_at', 'move_in_3_at', 'meeting_space_notes', 'meeting_space_food_and_beverage', 'uses_convention_center' ]
    @something_available_hotel_viewable_notes_section = [ 'hotel_viewable_notes_section' ]
    @something_available_notes = [ 'key_bid_element_notes', 'why_considered_notes', 'decision_process_notes', 'miscellaneous_notes', 'followup_instructions',
      'revision_notes', 'internal_notes', 'services_notes' ]
    @something_available_hotel_response_list_section = [ 'hotel_response_list_section' ]
    @something_available_economic_impact_section = [ 'economic_impact_section' ]
    @something_available_group_tour_section = [ 'group_tour_section' ]
    @something_available_approvals = [ 'approval_original_issue_at', 'approval_request_at', 'approval_at' ]
    @something_available_booking_dates = [ 'definite_booking_at', 'tentative_booking_at', 'lost_booking_at', 'definite_booking_by_id', 'tentative_booking_by_id',
      'lost_booking_by_id', 'definite_room_nights', 'tentative_room_nights', 'lost_room_nights', 'hide_from_calendar', 'hide_from_dashboard' ]

    @templates = Content.context_scope.active_status.available.tagged_with_label('content_type_meeting_date_template').order('position,title').to_a
    @tour_types = ContextCache.tagmap("group_tour_type")

    @meeting_date_configuration_hash = MeetingDateConfigurationHash.new
  end

  def meeting_date_response_shared_setup
    @view_map_meeting_date_response_essentials = view_map_array("view_map.meeting_date_responses", "meeting_date_response_essentials", "approval_history", "status_logs")
    @view_map_meeting_date_response_room_rates = view_map_array("view_map.meeting_date_responses", "meeting_date_response_rate")
    @view_map_meeting_date_response_financials = view_map_array("view_map.meeting_date_responses", "meeting_date_response_financials")
    @view_map_meeting_date_response_notes = view_map_array("view_map.meeting_date_responses", "meeting_date_response_notes")
    @view_map_meeting_date_response_attached_documents = view_map_array("view_map.meeting_date_responses", "meeting_date_response_attached_documents")
  end
end