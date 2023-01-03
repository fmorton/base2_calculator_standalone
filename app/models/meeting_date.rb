#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: added from base2_cvb
#DEBUG: needs to be heavily edited
class MeetingDate < ActiveRecord::Base
  include Base2ActiveRecord
  include Base2ActiveStatusModel
  include Base2ContextModel
  include Base2CachedNameModel
  include Base2SqlModel
  include Base2TaggedModel
  include MeetingDateConstants

  attr_accessor     :current_attendance_block
  attr_accessor     :current_room_block
  attr_accessor     :current_pick_up
  attr_accessor     :deep_copy_in_process
  attr_accessor     :housing_1_end_at
  attr_accessor     :meeting_1_end_at
  attr_accessor     :meeting_name  # for meeting_browser
  attr_accessor     :move_in_1_end_at
  attr_accessor     :pick_up_end_at
  attr_reader       :name_with_date
  attr_accessor     :new_meeting_name
  attr_accessor     :new_organization_name
  attr_accessor     :sync_by_controller

  MEETING_DATE_TYPE_MEETING = 0
  MEETING_DATE_TYPE_TOUR = 1
  MEETING_DATE_UNASSIGNED_NAME = "Unassigned"

  after_commit      :sync_extended_meeting_dates  # must be first (goes last)
  after_commit      :sync_financial_calculations
  after_commit      :sync_economic_impact
  after_commit      :sync_room_flows
  after_commit      :sync_bedded_rooms_percentages
  after_commit      :sync_peak_rooms_committed

  belongs_to        :context_organization, :optional => true
  belongs_to        :contact, :class_name => 'Person', :optional => true
  belongs_to        :meeting, :optional => true
  belongs_to        :organization, :optional => true
  belongs_to        :sales_manager, :class_name => 'Person', :foreign_key => :sales_manager_id, :optional => true
  has_many          :convention_center_attachments, -> { where('attachments.attachment_type' => Attachment::CONVENTION_CENTER_ATTACHMENT_TYPE) }, :as => :parent_object, :class_name => 'Attachment', :dependent => :destroy
  has_many          :attendance_block, -> { where(:room_flow_type => MeetingDateRoomFlow::ROOM_FLOW_TYPE_ATTENDANCE).order(:position) }, :class_name => 'MeetingDateRoomFlow', :dependent => :destroy
  has_many          :hotel_viewable_notes, -> { where(:hotel_viewable => true).order("notes.note_at desc,notes.id desc") }, :class_name => 'Note'
  has_many          :pick_up, -> { where(:room_flow_type => MeetingDateRoomFlow::ROOM_FLOW_TYPE_PICK_UP).order(:position) }, :class_name => 'MeetingDateRoomFlow', :dependent => :destroy
  has_many          :notes
  has_many          :referrals
  has_many          :room_block, -> { where(:room_flow_type => MeetingDateRoomFlow::ROOM_FLOW_TYPE_BLOCKED).order(:position) }, :class_name => 'MeetingDateRoomFlow', :dependent => :destroy
  has_many          :meeting_date_approvals, -> { order(:position) }, :dependent => :destroy
  has_many          :meeting_date_group_tour_dates, :dependent => :destroy
  has_many          :meeting_date_meeting_space_status_logs, :dependent => :destroy
  has_many          :meeting_date_meeting_spaces, :dependent => :destroy
  has_many          :meeting_date_room_flows, -> { order(:position) }, :dependent => :destroy
  has_many          :meeting_date_responses, :dependent => :destroy
  has_many          :meeting_date_status_logs, :dependent => :destroy
  has_many          :meeting_date_transactions, :dependent => :destroy
  has_one           :extended_meeting_date, :dependent => :destroy
  has_one           :meeting_date_economic_impact, :dependent => :destroy
  has_one           :meeting_date_financial_commitment, :dependent => :destroy
  has_one           :web_convention, :dependent => :destroy

  datepicker_method :approval_at
  datepicker_method :approval_original_issue_at
  datepicker_method :approval_request_at
  datepicker_method :decision_at
  datepicker_method :definite_booking_at
  datepicker_method :housing_1_at
  datepicker_method :housing_2_at
  datepicker_method :housing_3_at
  datepicker_method :housing_1_end_at
  datepicker_method :lost_booking_at
  datepicker_method :meeting_1_at
  datepicker_method :meeting_2_at
  datepicker_method :meeting_3_at
  datepicker_method :meeting_1_end_at
  datepicker_method :meeting_space_grid_modified_at
  datepicker_method :meeting_space_grid_verified_at
  datepicker_method :move_in_1_at
  datepicker_method :move_in_2_at
  datepicker_method :move_in_3_at
  datepicker_method :move_in_1_end_at
  datepicker_method :peak_rooms_committed_1
  datepicker_method :peak_rooms_committed_2
  datepicker_method :peak_rooms_committed_3
  datepicker_method :pick_up_at
  datepicker_method :pick_up_end_at
  datepicker_method :response_needed_at
  datepicker_method :status_note_updated_at
  datepicker_method :tentative_booking_at

  accepts_nested_attributes_for :meeting_date_approvals
  accepts_nested_attributes_for :meeting_date_economic_impact
  accepts_nested_attributes_for :meeting_date_financial_commitment
  accepts_nested_attributes_for :meeting_date_group_tour_dates
  accepts_nested_attributes_for :web_convention

  def context_before_validation_application_extra
    self.actual_attendance = 0 if self.actual_attendance.nil?
    self.approval_held = false if self.approval_held.nil?
    self.approval_status = 0 if self.approval_status.nil?
    self.attendance = 0 if self.attendance.nil?
    self.breakout_room_count = 0 if self.breakout_room_count.nil?
    self.canceled = false if self.canceled.nil?
    self.competing_city_1_id = 0 if self.competing_city_1_id.nil?
    self.competing_city_2_id = 0 if self.competing_city_2_id.nil?
    self.competing_city_3_id = 0 if self.competing_city_3_id.nil?
    self.competing_city_4_id = 0 if self.competing_city_4_id.nil?
    self.competing_city_5_id = 0 if self.competing_city_5_id.nil?
    self.contact_id = 0 if self.contact_id.nil?
    self.data_source_status = 0 if self.data_source_status.nil?
    self.data_source_status_2 = 0 if self.data_source_status_2.nil?
    self.decision_maker_id = 0 if self.decision_maker_id.nil?
    self.definite_booking_by_id = 0 if self.definite_booking_by_id.nil?
    self.definite_room_nights = 0 if self.definite_room_nights.nil?
    self.delegate_attendance = 0 if self.delegate_attendance.nil?
    self.economic_impact = 0.0 if self.economic_impact.nil?
    self.exhibit_10x10_count = 0 if self.exhibit_10x10_count.nil?
    self.exhibit_8x10_count = 0 if self.exhibit_8x10_count.nil?
    self.exhibit_gsf = 0 if self.exhibit_gsf.nil?
    self.exhibit_location_id = 0 if self.exhibit_location_id.nil?
    self.flexible_dates = false if self.flexible_dates.nil?
    self.food_and_beverage_function_count = 0 if self.food_and_beverage_function_count.nil?
    self.food_and_beverage_historical_spending = 0.0 if self.food_and_beverage_historical_spending.nil?
    self.food_and_beverage_largest_function_people_count = 0 if self.food_and_beverage_largest_function_people_count.nil?
    self.food_and_beverage_simultaneous_function_count = 0 if self.food_and_beverage_simultaneous_function_count.nil?
    self.headquarters_location_id = 0 if self.headquarters_location_id.nil?
    self.hide_from_calendar = false if self.hide_from_calendar.nil?
    self.hide_from_dashboard = false if self.hide_from_dashboard.nil?
    self.hide_meeting_date = false if self.hide_meeting_date.nil?
    self.host_city_id = 0 if self.host_city_id.nil?
    self.housing_by_id = 0 if self.housing_by_id.nil?
    self.housing_day_count = 0 if self.housing_day_count.nil?
    self.housing_fee = false if self.housing_fee.nil?
    self.housing_government_rates = false if self.housing_government_rates.nil?
    self.housing_percentage_one_bedded = 0.0 if self.housing_percentage_one_bedded.nil?
    self.housing_percentage_two_bedded = 0.0 if self.housing_percentage_two_bedded.nil?
    self.housing_rate_net_rates = false if self.housing_rate_net_rates.nil?
    self.housing_rate_requested_high = 0.0 if self.housing_rate_requested_high.nil?
    self.housing_rate_requested_low = 0.0 if self.housing_rate_requested_low.nil?
    self.housing_suite_count = 0 if self.housing_suite_count.nil?
    self.largest_meeting_people_count = 0 if self.largest_meeting_people_count.nil?
    self.lead_source_1_id = 0 if self.lead_source_1_id.nil?
    self.lead_source_2_id = 0 if self.lead_source_2_id.nil?
    self.lead_source_3_id = 0 if self.lead_source_3_id.nil?
    self.lost_booking_by_id = 0 if self.lost_booking_by_id.nil?
    self.lost_reason_1_id = 0 if self.lost_reason_1_id.nil?
    self.lost_reason_2_id = 0 if self.lost_reason_2_id.nil?
    self.lost_reason_3_id = 0 if self.lost_reason_3_id.nil?
    self.lost_reason_4_id = 0 if self.lost_reason_4_id.nil?
    self.lost_room_nights = 0 if self.lost_room_nights.nil?
    self.meeting_day_count = 0 if self.meeting_day_count.nil?
    self.meeting_id = 0 if self.meeting_id.nil?
    self.meeting_scope_id = 0 if self.meeting_scope_id.nil?
    self.meeting_space_grid_status = 0 if self.meeting_space_grid_status.nil?
    self.meeting_space_grid_verified_by = 0 if self.meeting_space_grid_verified_by.nil?
    self.meeting_status_id = 0 if self.meeting_status_id.nil?
    self.move_in_day_count = 0 if self.move_in_day_count.nil?
    self.organization_id = 0 if self.organization_id.nil?
    self.peak_attendance = 0 if self.peak_attendance.nil?
    self.peak_rooms_blocked = 0 if self.peak_rooms_blocked.nil?
    self.peak_rooms_committed_1 = 0 if self.peak_rooms_committed_1.nil?
    self.peak_rooms_committed_2 = 0 if self.peak_rooms_committed_2.nil?
    self.peak_rooms_committed_3 = 0 if self.peak_rooms_committed_3.nil?
    self.peak_rooms_picked_up = 0 if self.peak_rooms_picked_up.nil?
    self.pick_up_day_count = 0 if self.pick_up_day_count.nil?
    self.prospect_of_booking = 0.0 if self.prospect_of_booking.nil?
    self.public_attendance = 0 if self.public_attendance.nil?
    self.response_to_id = 0 if self.response_to_id.nil?
    self.sales_manager_id = 0 if self.sales_manager_id.nil?
    self.services_manager_id = 0 if self.services_manager_id.nil?
    self.shared = false if self.shared.nil?
    self.simultaneous_meetings_count = 0 if self.simultaneous_meetings_count.nil?
    self.single_property = false if self.single_property.nil?
    self.spending_event_type_id = 0 if self.spending_event_type_id.nil?
    self.tentative_booking_by_id = 0 if self.tentative_booking_by_id.nil?
    self.tentative_room_nights = 0 if self.tentative_room_nights.nil?
    self.total_attendance = 0 if self.total_attendance.nil?
    self.total_room_nights_blocked = 0 if self.total_room_nights_blocked.nil?
    self.total_room_nights_picked_up = 0 if self.total_room_nights_picked_up.nil?
    self.total_room_nights_previous = 0 if self.total_room_nights_previous.nil?
    self.type_id = MeetingDate::MEETING_DATE_TYPE_MEETING if self.type_id.nil?
    self.uses_convention_center = false if self.uses_convention_center.nil?

    self.definite_room_nights = self.total_room_nights_blocked if (self.definite_booking_at.not_nil?) && (self.definite_room_nights == 0)
    self.tentative_room_nights = self.total_room_nights_blocked if (self.tentative_booking_at.not_nil?) && (self.tentative_room_nights == 0)
    self.lost_room_nights = self.total_room_nights_blocked if (self.lost_booking_at.not_nil?) && (self.lost_room_nights == 0)

    self.canceled = ((self.definite_booking_at.not_nil?) && (self.lost_booking_at.not_nil?))

    if (self.delegate_attendance != 0) || (self.public_attendance != 0) || self.delegate_attendance_changed? || self.public_attendance_changed?
      self.attendance = self.delegate_attendance + self.public_attendance
    end

    if self.meeting_date_group_tour_dates.size > 0
      self.type_id = MeetingDate::MEETING_DATE_TYPE_TOUR unless self.type_id == MeetingDate::MEETING_DATE_TYPE_TOUR
    end

    if previous_changes_list.not_nil? && previous_changes_list.has_key?('status_note')
      self.status_note_updated_at = Time.now
    end

    if self.new_organization_name.strip.not_blank?
      if (organization = Organization.context_scope.where(:name => self.new_organization_name.strip).first).nil?
        organization = Organization.new(:name => self.new_organization_name.strip)
        organization.save!

        self.organization_id = organization.id
        self.meeting_id = 0
      end

      organization.tag_with_label('organization_type_consumer')
    end

    if self.new_meeting_name.strip.not_blank?
      if (meeting = Meeting.context_scope.where(:name => self.new_meeting_name.strip).where(:organization_id => self.organization_id).first).nil?
        meeting = Meeting.new(:name => self.new_meeting_name.strip, :organization_id => self.organization_id)
        meeting.save!

        self.meeting_id = meeting.id    
      end
    end
  end

  def self.show_empty_query?
    true
  end

  def self.active_tagmap_labels_application_extra
    'meeting_date_category'
  end

  def self.treat_as_percentage?(property_name)
    return true if property_name == 'housing_percentage_one_bedded'
    return true if property_name == 'housing_percentage_two_bedded'
    #return true if property_name == 'prospect_of_booking'
    false
  end

  def first_housing_date_in_range(date_from, date_to)
    return nil if date_from.nil? || date_to.nil?
    return self.housing_1_at if self.housing_1_at.not_nil? && (self.housing_1_at >= date_from) && (self.housing_1_at <= date_to)
    return self.housing_2_at if self.housing_2_at.not_nil? && (self.housing_2_at >= date_from) && (self.housing_2_at <= date_to)
    return self.housing_3_at if self.housing_3_at.not_nil? && (self.housing_3_at >= date_from) && (self.housing_3_at <= date_to)

    closest_count = 9999
    closest_housing_at = nil

    (1..3).each do |k|
      try_housing_at = "housing_#{k.to_s}_at"
      try_housing_at_value = self.send(try_housing_at)
      next if try_housing_at_value.nil?

      if (try_closest_count = (date_from - try_housing_at_value).abs) < closest_count
        closest_count = try_closest_count
        closest_housing_at = try_housing_at
      end
    end

    return nil if closest_housing_at.nil?

    self.send(closest_housing_at)
  end

  def hotel_viewable_notes_with_attachments
    hotel_viewable_notes.includes(:attachments).select("notes.*").include_note_type_name
  end

  def process_changes_after_commit
    return if self.destroyed?
    return if self.deep_copy_in_process

    MeetingDateApprovalProcess.process_changes(self)
  end

  def valid_housing_date_range?(start_at, end_at)
    return true if start_at.nil? || end_at.nil?

    day_count = (end_at - start_at + 1).to_i

    return false if day_count != self.housing_day_count

    return true if (start_at == self.housing_1_at)
    return true if (start_at == self.housing_2_at)
    return true if (start_at == self.housing_3_at)
 
    false
  end

  def housing_rate
    self.housing_rate_requested_low = 0.0 if self.housing_rate_requested_low.nil?
    self.housing_rate_requested_high = 0.0 if self.housing_rate_requested_high.nil?

    return self.housing_rate_requested_low if housing_rate_requested_high == 0.0
    return self.housing_rate_requested_high if housing_rate_requested_low == 0.0
    (((self.housing_rate_requested_low + self.housing_rate_requested_high) / 2.0) rescue 0.0)
  end

  def meeting_date_meeting_spaces_hash
    self.meeting_date_meeting_spaces.to_a.get_record_hash('meeting_space_id')
  end

  def self.not_inactive_meeting_status
    where("(meeting_dates.meeting_status_id!=?)", Base2Constants::STATUS_INACTIVE)
  end

  def transaction_room_nights
    total = 0
    MeetingDateTransaction.context_scope.where(:meeting_date_id => self.id).all.each do |meeting_date_transaction|
      total += meeting_date_transaction.room_nights
    end
    total
  end

  def sync_peak_rooms_committed
    #TODO: this loads multiple times...once for the meeting date and then once for each meeting_date_response save
    peak_rooms_committed = [ 0, 0, 0, 0 ]

    query = MeetingDateResponse.context_scope
    query = query.where(:meeting_date_id => self.id)
    query = query.joins(:meeting_date_response_rates)
    query = query.joins(:accommodation => :supplier_organization).where("supplier_organizations.receives_leads" => true)
    query = query.select("meeting_date_response_rates.position,meeting_date_response_rates.peak_rooms")
    query = query.where(:approval_status => MeetingDateConstants::MEETING_DATE_RESPONSE_STATUS_APPROVED)

    query.each do |rate|
      peak_rooms_committed[rate.position] += rate.peak_rooms
    end

    unless self.destroyed?
      self.update_column(:peak_rooms_committed_1, peak_rooms_committed[1]) if (self.peak_rooms_committed_1 != peak_rooms_committed[1])
      self.update_column(:peak_rooms_committed_2, peak_rooms_committed[2]) if (self.peak_rooms_committed_2 != peak_rooms_committed[2])
      self.update_column(:peak_rooms_committed_3, peak_rooms_committed[3]) if (self.peak_rooms_committed_3 != peak_rooms_committed[3])
    end
  end

  def sync_room_flow_empty?(room_flow)
    room_flow.each do |room_flow_date|
      next if room_flow_date.new?
      return false if (room_flow_date.room_count > 0)
    end
    true
  end

  def sync_room_flow_date_changes(room_flow, room_flow_type, start_at, day_count, alternate_start_1_at, alternate_start_2_at)
    room_flow = [] if room_flow.nil?
    room_flow = room_flow.dup

    room_flow_to_truncate = room_flow[day_count..-1]
    room_flow = room_flow[0..(day_count - 1)]

    room_flow_to_truncate.destroy_records unless room_flow_to_truncate.empty?

    new_room_flow = []
    if start_at.not_nil?
      (0..(day_count - 1)).each do |offset|
        d = start_at + offset.days
        if (existing_date = room_flow.extract_record(:room_flow_1_at, d)).nil?
          new_room_flow_date = MeetingDateRoomFlow.new
          new_room_flow_date.context_organization_id = self.context_organization_id
          new_room_flow_date.meeting_date_id = self.id
          new_room_flow_date.room_flow_type = room_flow_type
        
          new_room_flow_date.room_flow_1_at = d
          new_room_flow_date.room_flow_2_at = ((alternate_start_1_at.nil?) ? nil : (alternate_start_1_at + offset.days))
          new_room_flow_date.room_flow_3_at = ((alternate_start_2_at.nil?) ? nil : (alternate_start_2_at + offset.days))

          new_room_flow << new_room_flow_date
        else
          existing_date.room_flow_1_at = d
          existing_date.room_flow_2_at = ((alternate_start_1_at.nil?) ? nil : (alternate_start_1_at + offset.days))
          existing_date.room_flow_3_at = ((alternate_start_2_at.nil?) ? nil : (alternate_start_2_at + offset.days))
          existing_date.room_flow_type = room_flow_type
          new_room_flow << existing_date
        end
      end
    end

    room_flow.destroy_records

    new_room_flow.position_all_records(false)

    new_room_flow
  end

  def sync_room_flow_blocks
    if self.current_attendance_block.nil?
      self.current_attendance_block = self.attendance_block.to_a
      self.current_room_block = self.room_block.to_a
      self.current_pick_up = self.pick_up.to_a

      self.current_attendance_block = sync_room_flow_date_changes(self.current_attendance_block, MeetingDateRoomFlow::ROOM_FLOW_TYPE_ATTENDANCE, self.housing_1_at, self.housing_day_count, self.housing_2_at, self.housing_3_at)
      self.current_room_block = sync_room_flow_date_changes(self.current_room_block, MeetingDateRoomFlow::ROOM_FLOW_TYPE_BLOCKED, self.housing_1_at, self.housing_day_count, self.housing_2_at, self.housing_3_at)
      self.current_pick_up = sync_room_flow_date_changes(self.current_pick_up, MeetingDateRoomFlow::ROOM_FLOW_TYPE_PICK_UP, self.pick_up_at, self.pick_up_day_count, nil, nil)
    end
  end

  def sync_room_flows
    return if self.destroyed?
    return if self.deep_copy_in_process

    unless self.destroyed?
      sync_room_flow_blocks

      calculated_attendance_string = self.current_attendance_block.collect { |o| o.room_count }.join(':')
      calculated_room_block_string = self.current_room_block.collect { |o| o.room_count }.join(':')
      calculated_pick_up_string = self.current_pick_up.collect { |o| o.room_count }.join(':')

      update_column_and_add_to_changes_list(:attendance_string, calculated_attendance_string)
      update_column_and_add_to_changes_list(:room_block_string, calculated_room_block_string)
      update_column_and_add_to_changes_list(:pick_up_string, calculated_pick_up_string)

      calculated_total_attendance_blocked = calculated_attendance_string.split(':').collect { |o| o.to_i }.inject(:+)
      calculated_total_room_nights_blocked = calculated_room_block_string.split(':').collect { |o| o.to_i }.inject(:+)
      calculated_total_room_nights_picked_up = calculated_pick_up_string.split(':').collect { |o| o.to_i }.inject(:+)

      update_column_and_add_to_changes_list(:total_attendance, calculated_total_attendance_blocked) unless calculated_total_attendance_blocked.to_i == 0
      update_column_and_add_to_changes_list(:total_room_nights_blocked, calculated_total_room_nights_blocked) unless calculated_total_room_nights_blocked.to_i == 0
      update_column_and_add_to_changes_list(:total_room_nights_picked_up, calculated_total_room_nights_picked_up) unless calculated_total_room_nights_picked_up.to_i == 0

      #-----------------------------------------------------------------------------------------------------------------------------------
      #  set peak rooms estimated/picked_up if a room flow is filled out
      #-----------------------------------------------------------------------------------------------------------------------------------
      #NOTE: 2017.02.06...set historical meeting dates per diane
      #status_tagmap = Tagmap.context_scope.find(self.meeting_status_id) rescue nil
      #status_historical = ((status_tagmap.nil?) ? false : status_tagmap.label.index('hist').true?)
      #if !status_historical && self.room_block_string.not_blank?

      if self.room_block_string.not_blank?
        calculated_peak_rooms_blocked = (self.room_block_string.split(':').collect { |n| n.to_i }.max rescue 0)

        update_column_and_add_to_changes_list(:peak_rooms_blocked, calculated_peak_rooms_blocked) unless calculated_peak_rooms_blocked.to_i == 0

        self.peak_rooms_blocked = calculated_peak_rooms_blocked
      end

      if self.pick_up_string.not_blank?
        calculated_peak_rooms_picked_up = (self.pick_up_string.split(':').collect { |n| n.to_i }.max rescue 0)

        update_column_and_add_to_changes_list(:peak_rooms_picked_up, calculated_peak_rooms_picked_up) unless calculated_peak_rooms_picked_up.to_i == 0

        self.peak_rooms_picked_up = calculated_peak_rooms_picked_up
      end

      if self.attendance_string.not_blank?
        calculated_peak_attendance = (self.attendance_string.split(':').collect { |n| n.to_i }.max rescue 0)

        update_column_and_add_to_changes_list(:peak_attendance, calculated_peak_attendance) unless calculated_peak_attendance.to_i == 0

        self.peak_attendance = calculated_peak_attendance
      end

      #-----------------------------------------------------------------------------------------------------------------------------------
      #  set self for other calculations
      #-----------------------------------------------------------------------------------------------------------------------------------
      self.attendance_string = calculated_attendance_string
      self.room_block_string = calculated_room_block_string
      self.pick_up_string = calculated_pick_up_string
      self.total_attendance = calculated_total_attendance_blocked unless calculated_total_attendance_blocked.to_i == 0
      self.total_room_nights_blocked = calculated_total_room_nights_blocked unless calculated_total_room_nights_blocked.to_i == 0
      self.total_room_nights_picked_up = calculated_total_room_nights_picked_up unless calculated_total_room_nights_picked_up.to_i == 0
    end
  end

  def sync_bedded_rooms_percentages
    return if self.destroyed?
    return if self.deep_copy_in_process

    self.housing_percentage_one_bedded = 0.0 if self.housing_percentage_one_bedded.nil?
    self.housing_percentage_two_bedded = 0.0 if self.housing_percentage_two_bedded.nil?

    self.housing_percentage_one_bedded = 0.0 if((self.housing_percentage_one_bedded < 0.0) || (self.housing_percentage_one_bedded > 1.0))
    self.housing_percentage_two_bedded = 0.0 if((self.housing_percentage_two_bedded < 0.0) || (self.housing_percentage_two_bedded > 1.0))

    if(self.housing_percentage_one_bedded == 0.0)
      if(self.housing_percentage_two_bedded == 0.0)
        #---------------------------------------------------------------------------------------------------------------------------
        #  both empty
        #---------------------------------------------------------------------------------------------------------------------------
      else
        #---------------------------------------------------------------------------------------------------------------------------
        #  two bedded has a number and one bedded does not
        #---------------------------------------------------------------------------------------------------------------------------
        self.housing_percentage_one_bedded = 1.0 - self.housing_percentage_two_bedded
      end
    else
      if(self.housing_percentage_two_bedded == 0.0)
        #---------------------------------------------------------------------------------------------------------------------------
        #  one bedded has a number and two bedded does not
        #---------------------------------------------------------------------------------------------------------------------------
        self.housing_percentage_two_bedded = 1.0 - self.housing_percentage_one_bedded
      else
        #---------------------------------------------------------------------------------------------------------------------------
        #  both have a number--treat as a ratio
        #---------------------------------------------------------------------------------------------------------------------------
        denominator = self.housing_percentage_one_bedded + self.housing_percentage_two_bedded

        self.housing_percentage_one_bedded = self.housing_percentage_one_bedded / denominator
        self.housing_percentage_two_bedded = self.housing_percentage_two_bedded / denominator
      end
    end

    update_column_and_add_to_changes_list(:housing_percentage_one_bedded, self.housing_percentage_one_bedded)
    update_column_and_add_to_changes_list(:housing_percentage_two_bedded, self.housing_percentage_two_bedded)
  end

  def sync_financial_calculations
    if !self.sync_by_controller
      MeetingDate.sync_financial_calculations(self)
    end
  end

  def self.sync_financial_calculations(meeting_date)
    return if meeting_date.destroyed?
    return if meeting_date.deep_copy_in_process

    unless meeting_date.destroyed?
      calculator = MeetingDateFinancialCalculator.new(meeting_date)
    end
  end

  def sync_economic_impact_use_new_calculator
    return true if Rails.env.development?
    false
  end

  def sync_economic_impact
    if !self.sync_by_controller
      MeetingDate.sync_economic_impact(self)
    end
  end

  def self.sync_economic_impact(meeting_date, meeting_date_meeting_space = nil)
    return if meeting_date.destroyed?
    return if meeting_date.deep_copy_in_process

    unless meeting_date.destroyed?
      calculator = MeetingDateEconomicCalculator.new(meeting_date, meeting_date_meeting_space)

      if meeting_date.log_completely_active?
        calculator.print_log(true)
      end
    end
  end

  def sync_extended_meeting_dates
    ExtendedMeetingDate.sync(self) unless self.destroyed?
  end

  def display_name_extra
    (" #{self.meeting_1_at.strftime("%m/%d/%Y")}" rescue '')
  end

  def display_title
    "#{self.name}#{display_name_extra}"
  end

  def recent_page_name
    display_title
  end

  def housing_date_count
    count = 0
    count += 1 unless self.housing_1_at.nil?
    count += 1 unless self.housing_2_at.nil?
    count += 1 unless self.housing_3_at.nil?
    count
  end

  def housing_1_end_at
    calculated_end_at(:housing_1_at, :housing_day_count)
  end

  def housing_2_end_at
    calculated_end_at(:housing_2_at, :housing_day_count)
  end

  def housing_3_end_at
    calculated_end_at(:housing_3_at, :housing_day_count)
  end

  def formatted_housing_1_end_at=(value)
    calculated_day_count(:housing_1_at, :housing_day_count, value)
  end

  def meeting_1_end_at
    calculated_end_at(:meeting_1_at, :meeting_day_count)
  end

  def meeting_2_end_at
    calculated_end_at(:meeting_2_at, :meeting_day_count)
  end

  def meeting_3_end_at
    calculated_end_at(:meeting_3_at, :meeting_day_count)
  end

  def formatted_meeting_1_end_at=(value)
    calculated_day_count(:meeting_1_at, :meeting_day_count, value)
  end

  def move_in_1_end_at
    calculated_end_at(:move_in_1_at, :move_in_day_count)
  end

  def move_in_2_end_at
    calculated_end_at(:move_in_2_at, :move_in_day_count)
  end

  def move_in_3_end_at
    calculated_end_at(:move_in_3_at, :move_in_day_count)
  end

  def formatted_move_in_1_end_at=(value)
    calculated_day_count(:move_in_1_at, :move_in_day_count, value)
  end

  def pick_up_end_at
    calculated_end_at(:pick_up_at, :pick_up_day_count)
  end

  def formatted_pick_up_end_at=(value)
    calculated_day_count(:pick_up_at, :pick_up_day_count, value)
  end

  def housing_at_array
    a = []
    if self.housing_day_count > 0
      a << [ self.housing_1_at, housing_1_end_at ] unless self.housing_1_at.nil?
      a << [ self.housing_2_at, housing_1_end_at ] unless self.housing_2_at.nil?
      a << [ self.housing_3_at, housing_1_end_at ] unless self.housing_3_at.nil?
    end
    a
  end

  def housing_at_string(line_ending = "\n")
    return '' if (a = self.housing_at_array).empty?
    s = String.new
    a.each do |d|
      s << "#{d[0].standard_date} to #{d[1].standard_date}#{line_ending}"
    end
    s
  end

  def self.include_organizations(n = '')
    joins("join organizations as organizations#{n.to_s} on (meeting_dates.organization_id=organizations#{n.to_s}.id)")
  end

  def self.optionally_include_organizations(n = '')
    joins("left join organizations as organizations#{n.to_s} on (meeting_dates.organization_id=organizations#{n.to_s}.id)")
  end

  def self.include_meetings(n = '')
    joins("join meetings as meetings#{n.to_s} on (meeting_dates.meeting_id=meetings#{n.to_s}.id)")
  end

  def self.optionally_include_meetings(n = '')
    joins("left join meetings as meetings#{n.to_s} on (meeting_dates.meeting_id=meetings#{n.to_s}.id)")
  end

  def self.meeting_date_fields(include_all_meeting_date_fields = true)
    ((include_all_meeting_date_fields) ? "meeting_dates.*," : "")
  end

  def self.include_status_string(include_all_meeting_date_fields = true)
    joins("left join tagmaps as tagmaps_for_status_string on (tagmaps_for_status_string.id=meeting_dates.meeting_status_id)").select("#{MeetingDate.meeting_date_fields(include_all_meeting_date_fields)}tagmaps_for_status_string.name as status_string,tagmaps_for_status_string.label as status_label")
  end

  def self.include_spending_event_type_string(include_all_meeting_date_fields = true)
    joins("left join tagmaps as spending_event_type_string on (spending_event_type_string.id=meeting_dates.spending_event_type_id)").select("#{MeetingDate.meeting_date_fields(include_all_meeting_date_fields)}spending_event_type_string.name as spending_event_type_string")
  end

  def self.include_meeting_date_response_for_accommodation(accommodation_id, n = '')
    joins("join meeting_date_responses as meeting_date_responses#{n.to_s} on ((meeting_dates.id=meeting_date_responses#{n.to_s}.meeting_date_id) and (meeting_date_responses#{n.to_s}.accommodation_id='#{accommodation_id.to_s}'))")
  end

  def self.include_host_city
    joins("left join tagmaps as tagmaps_host_city on (meeting_dates.host_city_id=tagmaps_host_city.id)").select("tagmaps_host_city.name as host_city_name")
  end

  def self.include_context_organization_host_city(select_name = "context_organization_host_city_name")
    joins("left join context_organizations as context_organization_host_city on (meeting_dates.host_city_id=context_organization_host_city.id)").select("context_organization_host_city.name as #{select_name}")
  end

  def self.include_sales_manager
    joins("left join people as sales_manager on (meeting_dates.sales_manager_id=sales_manager.id)").select("sales_manager.name as sales_manager,sales_manager.name_last as sales_manager_last_name")
  end

  def self.include_convention_center_sales_manager
    joins("left join people as convention_center_sales_manager on (meeting_dates.meeting_space_grid_verified_by=convention_center_sales_manager.id)").select("convention_center_sales_manager.name as convention_center_sales_manager")
  end

  def self.include_approval_request_days
    select("(current_date - approval_request_at) as age")
  end

  def calculated_age
    self['age'].to_i
  end

  def self.default_order_property_name
    'meeting_dates.meeting_1_at desc,meeting_dates.name'
  end

  def name_with_date
    name = (self.meeting_1_at.strftime("%m/%d/%y") rescue '')
    name = "#{name} #{self[:name]}"
    name.strip
  end

  def meeting_dates
    s = String.new
    (1..3).each do |n|
      next if (d = self.send("meeting_#{n.to_s}_at")).nil?
      s << "&mdash;" unless s.blank?
      s << d.strftime("%m/%d/%y")
    end
    s
  end

  def does_not_need_approval?
    !(self.needs_approval?)
  end

  def needs_approval?
    return true if ((self.approval_status == MeetingDateConstants::MEETING_DATE_APPROVAL_STATUS_NEEDS_APPROVAL) || (self.approval_status == MeetingDateConstants::MEETING_DATE_APPROVAL_STATUS_NEEDS_INTERNAL_APPROVAL))
    false
  end

  def approved(approved_if_approvals_empty = false)
    meeting_date_approvals = self.meeting_date_approvals

    return approved_if_approvals_empty if meeting_date_approvals.empty?

    meeting_date_approvals.each do |meeting_date_approval|
      return false if meeting_date_approval.approval_status != MeetingDateConstants::MEETING_DATE_APPROVAL_STATUS_APPROVED
    end

    true
  end

  def approvals_hash(fill_records = false)
    MeetingDateApprovalHash.new(self, fill_records)
  end

  def room_block_string_value(day_index)
    return 0 if self.room_block_string.blank?
    self.room_block_string.split(':')[day_index].to_i rescue 0
  end
    
  def tour
    self.type_id == MeetingDate::MEETING_DATE_TYPE_TOUR
  end

  def tour=(tour_value)
    self.type_id = tour_value.to_i
  end

  def last_status_change_at
    [ self.definite_booking_at, self.tentative_booking_at, self.lost_booking_at ].compact.max
  end

  def deep_copy
    new_meeting_date = MeetingDate.new
    new_meeting_date.deep_copy_in_process = true
    new_meeting_date.save!

    new_meeting_date = self.duplicate_instead_of_dup(new_meeting_date)

    new_meeting_date.name = "#{new_meeting_date.name} Copy"
    new_meeting_date.approval_held = nil
    new_meeting_date.approval_status = nil
    new_meeting_date.approval_at = nil
    new_meeting_date.approval_original_issue_at = nil
    new_meeting_date.approval_request_at = Time.now.to_date
    new_meeting_date.rfp_issue_at = nil
    #new_meeting_date.response_to_id = nil
    new_meeting_date.response_needed_at = nil
    new_meeting_date.definite_booking_at = nil
    new_meeting_date.definite_booking_by_id = nil
    new_meeting_date.definite_room_nights = 0
    new_meeting_date.tentative_booking_at = nil
    new_meeting_date.tentative_booking_by_id = nil
    new_meeting_date.tentative_room_nights = 0
    new_meeting_date.lost_booking_at = nil
    new_meeting_date.lost_booking_by_id = nil
    new_meeting_date.lost_room_nights = 0
    new_meeting_date.lost_reason_1_id = nil
    new_meeting_date.lost_reason_2_id = nil
    new_meeting_date.lost_reason_3_id = nil
    new_meeting_date.lost_reason_4_id = nil
    new_meeting_date.peak_rooms_picked_up = 0
    new_meeting_date.created_at = Time.now
    new_meeting_date.updated_at = new_meeting_date.created_at

    new_meeting_date.meeting_space_grid_modified_at = nil
    new_meeting_date.meeting_space_grid_verified_at = nil
    new_meeting_date.meeting_space_grid_verified_by = 0
    new_meeting_date.meeting_space_grid_status = 0
    new_meeting_date.meeting_space_grid_notes = nil

    new_meeting_date.status_note = nil
    new_meeting_date.status_note_updated_at = nil
    new_meeting_date.actual_attendance = 0
    new_meeting_date.host_city_id = 0
    new_meeting_date.headquarters_hotel_1 = nil
    new_meeting_date.headquarters_hotel_2 = nil

    self.meeting_date_meeting_spaces.each { |o| o2 = o.dup; o2.meeting_date_id = new_meeting_date.id; o2.save }
    self.meeting_date_room_flows.each do |o|
      next if o.room_flow_type == 'P'   # ignore pickup
      o2 = o.dup; o2.meeting_date_id = new_meeting_date.id; o2.save
    end
    self.meeting_date_group_tour_dates.each { |o| o2 = o.dup; o2.meeting_date_id = new_meeting_date.id; o2.save }

    self.meeting_date_responses.each do |o|
      meeting_date_response = MeetingDateResponse.new
      meeting_date_response.organization_id = o.organization_id
      meeting_date_response.meeting_id = o.meeting_id
      meeting_date_response.meeting_date_id = new_meeting_date.id
      meeting_date_response.name = o.name
      meeting_date_response.accommodation_id = o.accommodation_id
      meeting_date_response.approval_status = MeetingDateConstants::MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL

      meeting_date_response.save!
     end

    if (meeting_date_financial_commitment = self.meeting_date_financial_commitment).not_nil?
      meeting_date_financial_commitment = meeting_date_financial_commitment.dup

      meeting_date_financial_commitment.meeting_date_id = new_meeting_date.id

      meeting_date_financial_commitment.expense_total = 0.0
      meeting_date_financial_commitment.expense_total_inside = 0.0
      meeting_date_financial_commitment.expense_total_outside = 0.0
      meeting_date_financial_commitment.expense_total_description = nil
      meeting_date_financial_commitment.expense_space = 0.0
      meeting_date_financial_commitment.expense_space_description = nil
      meeting_date_financial_commitment.expense_transportation = 0.0
      meeting_date_financial_commitment.expense_transportation_description = nil
      meeting_date_financial_commitment.expense_sponsor_food = 0.0
      meeting_date_financial_commitment.expense_sponsor_food_description = nil
      meeting_date_financial_commitment.expense_cash = 0.0
      meeting_date_financial_commitment.expense_cash_description = nil
      meeting_date_financial_commitment.expense_other = 0.0
      meeting_date_financial_commitment.expense_other_description = nil
      meeting_date_financial_commitment.expense_other_outside = 0.0
      meeting_date_financial_commitment.expense_other_outside_description = nil

      meeting_date_financial_commitment.save!
    end

    if (meeting_date_economic_impact = self.meeting_date_economic_impact).not_nil?
      meeting_date_economic_impact = meeting_date_economic_impact.dup

      meeting_date_economic_impact.meeting_date_id = new_meeting_date.id      

      meeting_date_economic_impact.save!
    end

    new_meeting_date.save!

    new_meeting_date
  end

  def upload(context, uploaded_file, upload_index)
    unless uploaded_file.nil?
      attachment_type = ((context.params[:redirect_controller] == 'jupiter_grids') rescue false) ? Attachment::CONVENTION_CENTER_ATTACHMENT_TYPE : Attachment::DEFAULT_ATTACHMENT_TYPE

      #  S3 storage
      pathname = uploaded_file.tempfile.path
      new_pathname = ResourceStorage.rails_root_tmp_pathname(uploaded_file.original_filename)

      FileUtils.cp(pathname, new_pathname)

      upload_file('base2_attachments', new_pathname, uploaded_file.content_type, attachment_type, true)
    end
  end

  def navigation_breadcrumbs
    a = []
    if (self.organization_id.not_nil? && (organization = self.organization).not_nil?)
      a << NavigationBreadcrumb.new(:organizations, organization.id, organization.name)
    end
    if (self.meeting_id.not_nil? && (meeting = self.meeting).not_nil?)
      a << NavigationBreadcrumb.new(:meetings, meeting.id, meeting.name)
    end
    a << NavigationBreadcrumb.new(:meeting_dates, self.id, self.name_with_date)
    a
  end

  def hotels
    hotels = Organization.context_scope.active.tagged_with_label('organization_type_hotels')
    hotels = hotels.joins(:supplier_organization)
    hotels = hotels.where("supplier_organizations.receives_leads" => true)
    hotels = hotels.joins("left join tags as location_tags on (location_tags.parent_object_id=organizations.id) and (location_tags.parent_object_type='Organization')")
    hotels = hotels.joins("left join tagmaps as location_tagmaps on (location_tagmaps.id=location_tags.tagmap_id)")
    hotels = hotels.where("location_tagmaps.label like 'location_city_region_%'")
    #hotels = hotels.where("location_tagmaps.label like 'location_distance_%'")
    hotels = hotels.select("organizations.*,location_tagmaps.name as location")
    hotels = hotels.order('location_tagmaps.name,sort_name')
    hotels = hotels.to_a
    hotels
  end

  def hotels_from_responses
    MeetingDateResponseHotels.new(self)
  end

  def calculated_log_type_internal_suffix(calculated_log_type, internal)
    ((internal) ? "#{calculated_log_type}I" : calculated_log_type)
  end

  def calculated_log_type(internal)
    #NOTE: 2016.09.06...RI/N/P/L (not used since 2003)/R/NI
    s = ""
    if definite_status?
      s << ((self.definite_booking_at.nil?) ? "N" : "R")
    elsif tentative_status?
      s << ((self.tentative_booking_at.nil?) ? "N" : "R")
    elsif lost_status?
      s << ((self.lost_booking_at.nil?) ? "N" : "R")
    end

    calculated_log_type_internal_suffix(s, internal)
  end

  def self.status_check?(meeting_status_id, patterns)
    return false if meeting_status_id.blank_or_zero?

    tagmap_label = ContextCache.fetch("meeting_status_tagmap_#{meeting_status_id.to_s}") { (Tagmap.context_scope.find(meeting_status_id).label rescue nil) }

    patterns.each do |pattern|
      return true if tagmap_label.index(pattern).not_nil?
    end
    false
  end

  def self.share_definites?
    false
  end

  def self.active_status?(meeting_status_id)
    MeetingDate.status_check?(meeting_status_id, [ 'definite', 'tentative', 'lost' ])
  end

  def self.definite_status?(meeting_status_id)
    MeetingDate.status_check?(meeting_status_id, [ 'definite' ])
  end

  def definite_status?
    MeetingDate.status_check?(self.meeting_status_id, [ 'definite' ])
  end

  def tentative_status?
    MeetingDate.status_check?(self.meeting_status_id, [ 'tentative' ])
  end

  def lost_status?
    MeetingDate.status_check?(self.meeting_status_id, [ 'lost' ])
  end

  def active_status?
    MeetingDate.status_check?(self.meeting_status_id, [ 'definite', 'tentative', 'lost' ])
  end

  def prospect_status?
    MeetingDate.status_check?(self.meeting_status_id, [ 'prospect' ])
  end

  def show_uri
    "https://jupiter.visitindy.com/meeting_dates/#{self.id.to_s}?organization=#{self.organization_id.to_s}&meeting=#{self.meeting_id.to_s}"
  end

  def edit_uri
    "https://jupiter.visitindy.com/meeting_dates/#{self.id.to_s}/edit?organization=#{self.organization_id.to_s}&meeting=#{self.meeting_id.to_s}"
  end

  def self.add_note_uri(organization_id, meeting_id, meeting_date_id)
    "/notes/new?organization=#{organization_id.to_s}&meeting=#{meeting_id.to_s}&meeting_date=#{meeting_date_id.to_s}"
  end

  def add_note_uri
    MeetingDate.add_note_uri(self.organization_id, self.meeting_id, self.id)
  end

  def self.select_for_calculations
    #select("actual_attendance").
    #select("approval_at").
    #select("approval_held").
    #select("approval_original_issue_at").
    #select("approval_request_at").
    #select("approval_status").
    ##select("attendance").
    #select("attendance_string").
    #select("breakout_room_count").
    #select("canceled").
    #select("competing_cities").
    #select("competing_city_1_id").
    #select("competing_city_2_id").
    #select("competing_city_3_id").
    #select("competing_city_4_id").
    #select("competing_city_5_id").
    #select("contact_id").
    #select("context_organization_id").
    select("created_at").
    #select("created_by").
    #select("data_source_id").
    #select("data_source_owner_id").
    #select("data_source_status").
    #select("data_source_status_2").
    #select("decision_at").
    #select("decision_maker_id").
    #select("decision_maker_other").
    #select("decision_process_notes").
    #select("definite_booking_at").
    #select("definite_booking_by_id").
    #select("definite_room_nights").
    #select("delegate_attendance").
    select("economic_impact").
    #select("exhibit_10x10_count").
    #select("exhibit_8x10_count").
    #select("exhibit_gsf").
    #select("exhibit_location_id").
    #select("flexible_dates").
    select("flexible_dates_note").
    #select("followup_instructions").
    #select("food_and_beverage_function_count").
    #select("food_and_beverage_historical_spending").
    #select("food_and_beverage_largest_function_people_count").
    #select("food_and_beverage_notes").
    #select("food_and_beverage_simultaneous_function_count").
    #select("headquarters_hotel_1").
    #select("headquarters_hotel_2").
    #select("headquarters_location_id").
    #select("hide_from_calendar").
    #select("hide_from_dashboard").
    #select("hide_meeting_date").
    #select("host_city_id").
    select("housing_1_at").
    #select("housing_2_at").
    #select("housing_3_at").
    #select("housing_by_id").
    #select("housing_day_count").
    #select("housing_fee").
    #select("housing_government_rates").
    #select("housing_percentage_one_bedded").
    #select("housing_percentage_two_bedded").
    #select("housing_rate_net_rates").
    #select("housing_rate_requested_high").
    #select("housing_rate_requested_low").
    #select("housing_suite_count").
    #select("internal_notes").
    #select("key_bid_element_notes").
    #select("largest_meeting_people_count").
    #select("lead_source_1_id").
    #select("lead_source_2_id").
    #select("lead_source_3_id").
    #select("lost_booking_at").
    #select("lost_booking_by_id").
    #select("lost_reason_1_id").
    #select("lost_reason_2_id").
    #select("lost_reason_3_id").
    #select("lost_reason_4_id").
    #select("lost_reasons").
    #select("lost_room_nights").
    select("meeting_1_at").
    #select("meeting_2_at").
    #select("meeting_3_at").
    #select("meeting_day_count").
    #select("meeting_id").
    #select("meeting_scope_id").
    #select("meeting_space_food_and_beverage").
    #select("meeting_space_grid_modified_at").
    #select("meeting_space_grid_notes").
    #select("meeting_space_grid_status").
    #select("meeting_space_grid_verified_at").
    #select("meeting_space_grid_verified_by").
    #select("meeting_space_notes").
    #select("meeting_space_requirement_notes").
    #select("meeting_status_id").
    #select("miscellaneous_notes").
    #select("move_in_1_at").
    #select("move_in_2_at").
    #select("move_in_3_at").
    #select("move_in_day_count").
    select("name").
    #select("organization_id").
    select("peak_attendance").
    select("peak_rooms_blocked").
    #select("peak_rooms_committed_1").
    #select("peak_rooms_committed_2").
    #select("peak_rooms_committed_3").
    #select("peak_rooms_picked_up").
    #select("pick_up_at").
    #select("pick_up_day_count").
    #select("pick_up_string").
    #select("prospect_of_booking").
    #select("public_attendance").
    #select("response_needed_at").
    #select("response_to_id").
    #select("revision_notes").
    #select("rfp_issue_at").
    #select("room_block_string").
    #select("sales_manager_id").
    #select("services_manager_id").
    #select("services_notes").
    select("shared").
    #select("simultaneous_meetings_count").
    #select("single_property").
    #select("spending_event_type_id").
    #select("status_note").
    #select("status_note_updated_at").
    #select("tentative_booking_at").
    #select("tentative_booking_by_id").
    #select("tentative_room_nights").
    select("total_attendance").
    select("total_room_nights_blocked").
    #select("total_room_nights_picked_up").
    #select("total_room_nights_previous").
    #select("type_id").
    #select("updated_at").
    #select("updated_by").
    #select("uses_convention_center").
    #select("web_coupon_text").
    #select("web_display_date").
    #select("web_display_name").
    #select("web_housing_text").
    #select("web_housing_uri").
    #select("web_image_uri").
    #select("web_shortcut_uri").
    #select("website").
    #select("why_considered_notes")

    select("id")
  end

  def self.convention_calendar(calendar_from = nil, calendar_to = nil, calendar_window = 14.days)
    convention_calendar = MeetingDate.context_scope
    convention_calendar = convention_calendar.joins("left join tagmaps on (tagmaps.id=meeting_dates.meeting_scope_id)")
    convention_calendar = convention_calendar.where("meeting_dates.meeting_1_at is not null")
    convention_calendar = convention_calendar.where("meeting_dates.meeting_1_at>?", (calendar_from - calendar_window)) unless calendar_from.nil?
    convention_calendar = convention_calendar.where("meeting_dates.meeting_1_at<?", calendar_to) unless calendar_to.nil?
    convention_calendar = convention_calendar.where("meeting_dates.meeting_status_id" => [ 6554, 6552 ])  # definite lead/definite booking
    convention_calendar = convention_calendar.where("meeting_dates.approval_status=?", MeetingDateConstants::MEETING_DATE_APPROVAL_STATUS_APPROVED)
    convention_calendar = convention_calendar.where("meeting_dates.approval_held=false")
    convention_calendar = convention_calendar.where("meeting_dates.hide_from_calendar=false")
    convention_calendar = convention_calendar.select("meeting_dates.id")
    convention_calendar = convention_calendar.select("meeting_dates.name")
    convention_calendar = convention_calendar.select("meeting_dates.attendance")
    convention_calendar = convention_calendar.select("meeting_dates.peak_rooms_blocked")
    convention_calendar = convention_calendar.select("meeting_dates.website")
    convention_calendar = convention_calendar.select("meeting_dates.meeting_1_at")
    convention_calendar = convention_calendar.select("meeting_dates.meeting_day_count")
    convention_calendar = convention_calendar.select("meeting_dates.uses_convention_center")
    convention_calendar = convention_calendar.select("meeting_dates.headquarters_hotel_1")
    convention_calendar = convention_calendar.select("meeting_dates.headquarters_hotel_2")
    convention_calendar = convention_calendar.select("meeting_dates.approval_status,meeting_dates.approval_held")
    convention_calendar = convention_calendar.select("organizations.name as organization_name")
    convention_calendar = convention_calendar.select("organizations.website as organization_website")
    convention_calendar = convention_calendar.select("tagmaps.name as meeting_scope")
    convention_calendar = convention_calendar.include_organizations
    convention_calendar = convention_calendar.order('meeting_dates.meeting_1_at')
  end

  #DEBUG: added from base2_cvb
  def self.show_empty_query?
    false
  end

  #DEBUG: added from base2_cvb
  def self.share_definites?
    true
  end
end
