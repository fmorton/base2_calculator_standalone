#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
class MeetingDateRoomFlow < ActiveRecord::Base
  include Base2ActiveRecord
  include Base2ContextModel
  include Base2SyncModel
  include Base2ChangeLogModel
  include Base2ArchiveModel
  include Base2SqlModel

  ECONOMICS_HASH_STATUS_DEFINITE = 'definite'
  ECONOMICS_HASH_STATUS_LOST = 'lost'
  ECONOMICS_HASH_STATUS_OTHER = 'other'
  ECONOMICS_HASH_STATUS_PROSPECT = 'prospect'
  ECONOMICS_HASH_STATUS_TENTATIVE = 'tentative'
  ECONOMICS_HASH_SUM = 'sum'
  ECONOMICS_HASH_DETAIL_COUNT = 'dcount'
  ECONOMICS_HASH_DETAIL_NAME = 'dname'
  ECONOMICS_HASH_DETAIL_PEAK = 'dpeak'
  HISTORY_WINDOW_SIZE = 8
  HISTORY_WINDOW_FUTURE_YEAR_COUNT = 3
  ROOM_FLOW_TYPE_ATTENDANCE = 'A'
  ROOM_FLOW_TYPE_BLOCKED = 'B'
  ROOM_FLOW_TYPE_PICK_UP = 'P'

  belongs_to :context_organization, :optional => true
  belongs_to :meeting_date, :optional => true

  scope :rooms_attendance_type, -> { where("room_flow_type='#{ROOM_FLOW_TYPE_ATTENDANCE}'") }
  scope :rooms_blocked_type, -> { where("room_flow_type='#{ROOM_FLOW_TYPE_BLOCKED}'") }
  scope :rooms_picked_up_type, -> { where("room_flow_type='#{ROOM_FLOW_TYPE_PICK_UP}'") }

  def self.join_meeting_dates
    s = select('meeting_date_room_flows.*,meeting_dates.id as meeting_date_id,meeting_dates.name,meeting_dates.meeting_status_id,meeting_dates.housing_1_at')
    s = s.select('meeting_dates.peak_rooms_blocked,organizations.name as organization_name,lower(tagmaps.name) as status_string')
    s = s.joins('join meeting_dates on (meeting_dates.id=meeting_date_room_flows.meeting_date_id)')
    s = s.joins('join organizations on (organizations.id=meeting_dates.organization_id)')
    s = s.joins('join tagmaps on (tagmaps.id=meeting_dates.meeting_status_id)')
    s
  end

  def context_before_validation_application_extra
    self.position = 0 if position.nil?
    self.room_count = 0 if room_count.nil?
    self.meeting_date_id = 0 if meeting_date_id.nil?

    self.room_flow_day_of_week_1 = room_flow_1_at.day_of_week rescue -1
    self.room_flow_day_of_week_2 = room_flow_2_at.day_of_week rescue -1
    self.room_flow_day_of_week_3 = room_flow_3_at.day_of_week rescue -1
    self.room_flow_week_of_year_1 = room_flow_1_at.week_of_year rescue -1
    self.room_flow_week_of_year_2 = room_flow_2_at.week_of_year rescue -1
    self.room_flow_week_of_year_3 = room_flow_3_at.week_of_year rescue -1

    self.room_flow_week_and_day_1 = Date.combine_week_of_year_and_day_of_week(self.room_flow_week_of_year_1, self.room_flow_day_of_week_1)
    self.room_flow_week_and_day_2 = Date.combine_week_of_year_and_day_of_week(self.room_flow_week_of_year_2, self.room_flow_day_of_week_2)
    self.room_flow_week_and_day_3 = Date.combine_week_of_year_and_day_of_week(self.room_flow_week_of_year_3, self.room_flow_day_of_week_3)
  end

  def self.economics_hash(days_of_week, meeting_date_id_to_ignore = nil)
    economics_hash = {}
    self.context_scope.join_meeting_dates.where('(meeting_date_room_flows.room_flow_week_and_day_1 in (?))', days_of_week).where('extract(year from meeting_date_room_flows.room_flow_1_at) > ?', (Time.now.year - HISTORY_WINDOW_SIZE + HISTORY_WINDOW_FUTURE_YEAR_COUNT)).rooms_blocked_type.order('meeting_dates.peak_rooms_blocked desc,organizations.name,meeting_dates.name').all.each do |room_flow|
      next unless meeting_date_id_to_ignore.nil? || meeting_date_id_to_ignore != room_flow['meeting_date_id']

      key = economics_hash_key_from_room_flow(room_flow, ECONOMICS_HASH_SUM)
      economics_hash[key] = (economics_hash[key] || 0) + room_flow['room_count']

      meeting_date_name_key = economics_hash_key_from_room_flow(room_flow, ECONOMICS_HASH_DETAIL_NAME)
      economics_hash[meeting_date_name_key] = (economics_hash[meeting_date_name_key] || []) << "#{room_flow['organization_name']}: #{room_flow['name']}"

      meeting_date_count_key = economics_hash_key_from_room_flow(room_flow, ECONOMICS_HASH_DETAIL_COUNT)
      economics_hash[meeting_date_count_key] = (economics_hash[meeting_date_count_key] || []) << room_flow['room_count']

      meeting_date_peak_key = economics_hash_key_from_room_flow(room_flow, ECONOMICS_HASH_DETAIL_PEAK)
      economics_hash[meeting_date_peak_key] = (economics_hash[meeting_date_peak_key] || []) << room_flow['peak_rooms_blocked']

      #-----------------------------------------------------------------------------------------------------------------------------
      #  get meeting date detail
      #-----------------------------------------------------------------------------------------------------------------------------
      meeting_date_id_key = economics_hash_key_for_meeting_ids(room_flow)
      meeting_date_id_and_name_combined = "#{room_flow.organization_name}: #{room_flow.name}:::#{room_flow['meeting_date_id']}"
      if economics_hash[meeting_date_id_key].nil? || !economics_hash[meeting_date_id_key].include?(meeting_date_id_and_name_combined)
        economics_hash[meeting_date_id_key] = (economics_hash[meeting_date_id_key] || []) << meeting_date_id_and_name_combined
      end

      meeting_date_name_key = economics_hash_key_for_meeting_date_name(room_flow)
      if !economics_hash.has_key?(meeting_date_name_key)
        economics_hash[meeting_date_name_key] = room_flow.name
      end

      meeting_date_detail_key = economics_hash_key_for_meeting_date_detail(room_flow)
      economics_hash[meeting_date_detail_key] = room_flow['room_count']
    end
    economics_hash
  end

  def self.economics_hash_key_year(room_flow)
    (room_flow['housing_1_at'].instance_of?(String)) ? (room_flow['housing_1_at'][0..3] rescue '') : (room_flow['housing_1_at'].year rescue '')
  end

  def self.economics_hash_status_key(room_flow)
    return ECONOMICS_HASH_STATUS_DEFINITE if room_flow['status_string'].index(ECONOMICS_HASH_STATUS_DEFINITE)
    return ECONOMICS_HASH_STATUS_TENTATIVE if room_flow['status_string'].index(ECONOMICS_HASH_STATUS_TENTATIVE)
    return ECONOMICS_HASH_STATUS_PROSPECT if room_flow['status_string'].index(ECONOMICS_HASH_STATUS_PROSPECT)
    return ECONOMICS_HASH_STATUS_LOST if room_flow['status_string'].index(ECONOMICS_HASH_STATUS_LOST)
    ECONOMICS_HASH_STATUS_OTHER
  end

  def self.economics_hash_key(status, week_and_day, year, option = 'none')
    "#{status}.#{week_and_day}.#{year.to_s}.#{option}"
  end

  def self.economics_hash_key_for_meeting_ids(room_flow)
    economics_hash_key(economics_hash_status_key(room_flow), nil, economics_hash_key_year(room_flow), "MEETING_DATE_IDS")
  end

  def self.economics_hash_key_for_meeting_date_name(room_flow)
    "MEETING.#{room_flow.meeting_date_id.to_s}"
  end

  def self.economics_hash_key_for_meeting_date_detail(room_flow)
    "#{economics_hash_key_from_room_flow(room_flow)}.MEETING_DATE.#{room_flow.meeting_date_id.to_s}"
  end

  def self.economics_hash_key_from_room_flow(room_flow, option = 'none')
    #NOTE: 2012.11.26...postgres returns room_flow['housing_1_at'] as a String where mysql returned it as a Date
    #economics_hash_key(economics_hash_status_key(room_flow), room_flow['room_flow_week_and_day_1'], (room_flow['housing_1_at'].year rescue ''), option)
    economics_hash_key(economics_hash_status_key(room_flow), room_flow['room_flow_week_and_day_1'], economics_hash_key_year(room_flow), option)
  end
end
