#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: added from base2_cvb
#DEBUG: needs to be heavily edited
class Meeting < ActiveRecord::Base
  include Base2ActiveRecord
  include Base2ActiveStatusModel
  include Base2ContextModel
  include Base2CachedNameModel
  include Base2SqlModel
  include Base2TaggedModel
  include MeetingConstants

  belongs_to :context_organization, :optional => true
  belongs_to :organization, :optional => true
  has_many   :meeting_qualifications, :dependent => :destroy
  has_many   :notes
  has_many   :meeting_dates, :dependent => :destroy

  datepicker_method :qualified_at

  def context_before_validation_application_extra
    self.qualified_by = 0 if self.qualified_by.nil?
    self.qualified_by_author_id = 0 if self.qualified_by_author_id.nil?
  end

  def self.show_empty_query?
    true
  end

  def self.active_tagmap_labels_application_extra
    'meeting_tracking_code'
  end

  def self.include_organization
    joins("left join organizations on (organizations.id=meetings.organization_id)")
  end

  def self.include_meeting_dates
    joins("left join meeting_dates on (meeting_dates.meeting_id=meetings.id)")
  end

  def self.all_meeting_dates(meeting_id)
    all_meeting_dates = MeetingDate.context_scope
    all_meeting_dates = all_meeting_dates.where(:meeting_id => meeting_id)
    all_meeting_dates = all_meeting_dates.where("EXTRACT(YEAR FROM meeting_dates.meeting_1_at) >= ?", (Time.now.year - 5))
    #NOTE: 2017.06.16...allow even if host_city_id not set
    #all_meeting_dates = all_meeting_dates.where("meeting_dates.host_city_id!=?", 0)
    all_meeting_dates = all_meeting_dates.select("meeting_dates.id")
    all_meeting_dates = all_meeting_dates.select("meeting_dates.meeting_1_at,meeting_dates.attendance,meeting_dates.actual_attendance")
    all_meeting_dates = all_meeting_dates.select("meeting_dates.housing_rate_requested_low,meeting_dates.housing_rate_requested_high")
    all_meeting_dates = all_meeting_dates.select("meeting_dates.peak_rooms_picked_up")
    all_meeting_dates = all_meeting_dates.include_host_city
    all_meeting_dates = all_meeting_dates.include_status_string
    all_meeting_dates = all_meeting_dates.order("meeting_dates.meeting_1_at desc")
    all_meeting_dates = all_meeting_dates.all
  end

  def all_meeting_dates
    Meeting.all_meeting_dates(self.id)
  end

  def ok_to_delete?
    (MeetingDate.context_scope.where("meeting_dates.meeting_id" => self.id).to_a.size == 0)
  end

  def navigation_breadcrumbs
    a = []
    if (self.organization_id.not_nil? && (organization = self.organization).not_nil?)
      a << NavigationBreadcrumb.new(:organizations, organization.id, organization.name)
    end
    a << NavigationBreadcrumb.new(:meetings, self.id, self.name)
    a
  end
end
