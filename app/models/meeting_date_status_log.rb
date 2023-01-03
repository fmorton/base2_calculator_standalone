#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
class MeetingDateStatusLog < ActiveRecord::Base
  include Base2ActiveRecord
  include Base2ContextModel
  include Base2ChangeLogModel
  include Base2ArchiveModel

  belongs_to :context_organization, :optional => true
  belongs_to :meeting_date, :optional => true

  def context_before_validation_application_extra
    self.data_source_id = 0 if self.data_source_id.nil?
    self.meeting_status_id = 0 if self.meeting_status_id.nil?
    self.sales_manager_id = 0 if self.sales_manager_id.nil?
  end

  def self.do_not_include_internal_log_type
    where("meeting_date_status_logs.log_type not like '%I%'")
  end
end
