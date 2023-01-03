#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
module MeetingDateConstants
  MEETING_DATE_APPROVAL_STATUS_NONE = 0
  MEETING_DATE_APPROVAL_STATUS_UNDEFINED = 20000
  MEETING_DATE_APPROVAL_STATUS_NEEDS_APPROVAL = 20001
  MEETING_DATE_APPROVAL_STATUS_NEEDS_INTERNAL_APPROVAL = 20002
  MEETING_DATE_APPROVAL_STATUS_APPROVED = 20099

  MEETING_DATE_APPROVAL_STATUS_UNDEFINED_TEXT = ''
  MEETING_DATE_APPROVAL_STATUS_NEEDS_APPROVAL_TEXT = 'Needs Approval'
  MEETING_DATE_APPROVAL_STATUS_NEEDS_INTERNAL_APPROVAL_TEXT = 'Needs Internal Approval'
  MEETING_DATE_APPROVAL_STATUS_APPROVED_TEXT = 'Approved'

  MEETING_DATE_APPROVAL_STATUS_VALUES = [
    [ MEETING_DATE_APPROVAL_STATUS_NEEDS_APPROVAL_TEXT, MEETING_DATE_APPROVAL_STATUS_NEEDS_APPROVAL.to_s ],
    [ MEETING_DATE_APPROVAL_STATUS_NEEDS_INTERNAL_APPROVAL_TEXT, MEETING_DATE_APPROVAL_STATUS_NEEDS_INTERNAL_APPROVAL.to_s ],
    [ MEETING_DATE_APPROVAL_STATUS_APPROVED_TEXT, MEETING_DATE_APPROVAL_STATUS_APPROVED.to_s ]
  ]

  MEETING_DATE_RESPONSE_STATUS_NONE = 0
  MEETING_DATE_RESPONSE_STATUS_UNDEFINED = 21000
  MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL = 21001
  MEETING_DATE_RESPONSE_STATUS_PENDING = 21002
  MEETING_DATE_RESPONSE_STATUS_APPROVED = 21003
  MEETING_DATE_RESPONSE_STATUS_DECLINED = 21004
  MEETING_DATE_RESPONSE_STATUS_LOST = 21005
  MEETING_DATE_RESPONSE_STATUS_INCOMPLETE = 21006

  MEETING_DATE_RESPONSE_STATUS_UNDEFINED_TEXT = ''
  MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL_TEXT = 'Needs Approval'
  MEETING_DATE_RESPONSE_STATUS_PENDING_TEXT = 'Pending'
  MEETING_DATE_RESPONSE_STATUS_APPROVED_TEXT = 'Approved'
  MEETING_DATE_RESPONSE_STATUS_DECLINED_TEXT = 'Declined'
  MEETING_DATE_RESPONSE_STATUS_LOST_TEXT = 'Lost'
  MEETING_DATE_RESPONSE_STATUS_INCOMPLETE_TEXT = 'Incomplete'

  MEETING_DATE_RESPONSE_STATUS_VALUES = [
    [ MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL_TEXT, MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_PENDING_TEXT, MEETING_DATE_RESPONSE_STATUS_PENDING.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_APPROVED_TEXT, MEETING_DATE_RESPONSE_STATUS_APPROVED.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_DECLINED_TEXT, MEETING_DATE_RESPONSE_STATUS_DECLINED.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_LOST_TEXT, MEETING_DATE_RESPONSE_STATUS_LOST.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_INCOMPLETE_TEXT, MEETING_DATE_RESPONSE_STATUS_INCOMPLETE.to_s ]
  ]

  MEETING_DATE_RESPONSE_STATUS_VALUES_FOR_HOTEL_SEARCH = [
    [ '', '' ],
    [ MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL_TEXT, MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_PENDING_TEXT, MEETING_DATE_RESPONSE_STATUS_PENDING.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_APPROVED_TEXT, MEETING_DATE_RESPONSE_STATUS_APPROVED.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_DECLINED_TEXT, MEETING_DATE_RESPONSE_STATUS_DECLINED.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_LOST_TEXT, MEETING_DATE_RESPONSE_STATUS_LOST.to_s ]
    #[ MEETING_DATE_RESPONSE_STATUS_INCOMPLETE_TEXT, MEETING_DATE_RESPONSE_STATUS_INCOMPLETE.to_s ]
  ]

  MEETING_DATE_RESPONSE_STATUS_VALUES_FOR_SEARCH = [
    [ '', '' ],
    [ MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL_TEXT, MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_PENDING_TEXT, MEETING_DATE_RESPONSE_STATUS_PENDING.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_APPROVED_TEXT, MEETING_DATE_RESPONSE_STATUS_APPROVED.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_DECLINED_TEXT, MEETING_DATE_RESPONSE_STATUS_DECLINED.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_LOST_TEXT, MEETING_DATE_RESPONSE_STATUS_LOST.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_INCOMPLETE_TEXT, MEETING_DATE_RESPONSE_STATUS_INCOMPLETE.to_s ],
    [ 'Deleted', Base2Constants::STATUS_INACTIVE.to_s ]
  ]

  MEETING_DATE_RESPONSE_STATUS_VALUES_FOR_EMAIL = [
    [ MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL_TEXT, MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_PENDING_TEXT, MEETING_DATE_RESPONSE_STATUS_PENDING.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_APPROVED_TEXT, MEETING_DATE_RESPONSE_STATUS_APPROVED.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_DECLINED_TEXT, MEETING_DATE_RESPONSE_STATUS_DECLINED.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_LOST_TEXT, MEETING_DATE_RESPONSE_STATUS_LOST.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_INCOMPLETE_TEXT, MEETING_DATE_RESPONSE_STATUS_INCOMPLETE.to_s ],
    [ MEETING_DATE_RESPONSE_STATUS_UNDEFINED_TEXT, MEETING_DATE_RESPONSE_STATUS_UNDEFINED.to_s ]
  ]

  MEETING_DATE_RESPONSE_HOLD_OPTION_OTHER  = 30000
  MEETING_DATE_RESPONSE_HOLD_OPTION_FIRST = 30001
  MEETING_DATE_RESPONSE_HOLD_OPTION_SECOND = 30002
  MEETING_DATE_RESPONSE_HOLD_OPTION_THIRD = 30003
  MEETING_DATE_RESPONSE_HOLD_OPTION_FOURTH = 30004

  MEETING_DATE_RESPONSE_HOLD_OPTION_OTHER_TEXT = "Other"
  MEETING_DATE_RESPONSE_HOLD_OPTION_FIRST_TEXT = "First Option"
  MEETING_DATE_RESPONSE_HOLD_OPTION_SECOND_TEXT = "Second Option"
  MEETING_DATE_RESPONSE_HOLD_OPTION_THIRD_TEXT = "Third Option"
  MEETING_DATE_RESPONSE_HOLD_OPTION_FOURTH_TEXT = "Fourth Option"

  MEETING_DATE_RESPONSE_HOLD_OPTION = [
    [ '', '' ],
    [ MEETING_DATE_RESPONSE_HOLD_OPTION_FIRST_TEXT, MEETING_DATE_RESPONSE_HOLD_OPTION_FIRST ],
    [ MEETING_DATE_RESPONSE_HOLD_OPTION_SECOND_TEXT, MEETING_DATE_RESPONSE_HOLD_OPTION_SECOND ],
    [ MEETING_DATE_RESPONSE_HOLD_OPTION_THIRD_TEXT, MEETING_DATE_RESPONSE_HOLD_OPTION_THIRD ],
    [ MEETING_DATE_RESPONSE_HOLD_OPTION_FOURTH_TEXT, MEETING_DATE_RESPONSE_HOLD_OPTION_FOURTH ],
    [ MEETING_DATE_RESPONSE_HOLD_OPTION_OTHER_TEXT, MEETING_DATE_RESPONSE_HOLD_OPTION_OTHER ]
  ]

  MEETING_SPACE_GRID_STATUS_UNDEFINED = 22000
  MEETING_SPACE_GRID_STATUS_NEEDS_VERIFY = 22001
  MEETING_SPACE_GRID_STATUS_PENDING = 22002
  MEETING_SPACE_GRID_STATUS_NEEDS_CHANGE = 22003
  MEETING_SPACE_GRID_STATUS_VERIFIED = 22004
  MEETING_SPACE_GRID_STATUS_LOST = 22005
  MEETING_SPACE_GRID_STATUS_INCOMPLETE = 22006

  MEETING_SPACE_GRID_STATUS_UNDEFINED_TEXT = ''
  MEETING_SPACE_GRID_STATUS_NEEDS_VERIFY_TEXT = 'Needs Verification'
  MEETING_SPACE_GRID_STATUS_PENDING_TEXT = 'Pending'
  MEETING_SPACE_GRID_STATUS_NEEDS_CHANGE_TEXT = 'Needs Change'
  MEETING_SPACE_GRID_STATUS_VERIFIED_TEXT = 'Verified'
  MEETING_SPACE_GRID_STATUS_LOST_TEXT = 'Lost'
  MEETING_SPACE_GRID_STATUS_INCOMPLETE_TEXT = 'Incomplete'

  MEETING_SPACE_GRID_STATUS_VALUES = [
    [ MEETING_SPACE_GRID_STATUS_NEEDS_VERIFY_TEXT, MEETING_SPACE_GRID_STATUS_NEEDS_VERIFY.to_s ],
    [ MEETING_SPACE_GRID_STATUS_PENDING_TEXT, MEETING_SPACE_GRID_STATUS_PENDING.to_s ],
    #[ MEETING_SPACE_GRID_STATUS_NEEDS_CHANGE_TEXT, MEETING_SPACE_GRID_STATUS_NEEDS_CHANGE.to_s ],
    [ MEETING_SPACE_GRID_STATUS_VERIFIED_TEXT, MEETING_SPACE_GRID_STATUS_VERIFIED.to_s ],
    [ MEETING_SPACE_GRID_STATUS_LOST_TEXT, MEETING_SPACE_GRID_STATUS_LOST.to_s ]
    #[ MEETING_SPACE_GRID_STATUS_INCOMPLETE_TEXT, MEETING_SPACE_GRID_STATUS_INCOMPLETE.to_s ]
  ]

  MEETING_DATE_STATUS_STRING = {
    MEETING_DATE_APPROVAL_STATUS_UNDEFINED => MEETING_DATE_APPROVAL_STATUS_UNDEFINED_TEXT,
    MEETING_DATE_APPROVAL_STATUS_NEEDS_APPROVAL => MEETING_DATE_APPROVAL_STATUS_NEEDS_APPROVAL_TEXT,
    MEETING_DATE_APPROVAL_STATUS_NEEDS_INTERNAL_APPROVAL => MEETING_DATE_APPROVAL_STATUS_NEEDS_INTERNAL_APPROVAL_TEXT,
    MEETING_DATE_APPROVAL_STATUS_APPROVED => MEETING_DATE_APPROVAL_STATUS_APPROVED_TEXT,
    MEETING_DATE_RESPONSE_STATUS_UNDEFINED => MEETING_DATE_RESPONSE_STATUS_UNDEFINED_TEXT,
    MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL => MEETING_DATE_RESPONSE_STATUS_NEEDS_APPROVAL_TEXT,
    MEETING_DATE_RESPONSE_STATUS_PENDING => MEETING_DATE_RESPONSE_STATUS_PENDING_TEXT,
    MEETING_DATE_RESPONSE_STATUS_APPROVED => MEETING_DATE_RESPONSE_STATUS_APPROVED_TEXT,
    MEETING_DATE_RESPONSE_STATUS_DECLINED => MEETING_DATE_RESPONSE_STATUS_DECLINED_TEXT,
    MEETING_DATE_RESPONSE_STATUS_LOST => MEETING_DATE_RESPONSE_STATUS_LOST_TEXT,
    MEETING_DATE_RESPONSE_STATUS_INCOMPLETE => MEETING_DATE_RESPONSE_STATUS_INCOMPLETE_TEXT,
    MEETING_DATE_RESPONSE_HOLD_OPTION_OTHER => MEETING_DATE_RESPONSE_HOLD_OPTION_OTHER_TEXT,
    MEETING_DATE_RESPONSE_HOLD_OPTION_FIRST => MEETING_DATE_RESPONSE_HOLD_OPTION_FIRST_TEXT,
    MEETING_DATE_RESPONSE_HOLD_OPTION_SECOND => MEETING_DATE_RESPONSE_HOLD_OPTION_SECOND_TEXT,
    MEETING_DATE_RESPONSE_HOLD_OPTION_THIRD => MEETING_DATE_RESPONSE_HOLD_OPTION_THIRD_TEXT,
    MEETING_DATE_RESPONSE_HOLD_OPTION_FOURTH => MEETING_DATE_RESPONSE_HOLD_OPTION_FOURTH_TEXT,
    MEETING_SPACE_GRID_STATUS_UNDEFINED => MEETING_SPACE_GRID_STATUS_UNDEFINED_TEXT,
    MEETING_SPACE_GRID_STATUS_NEEDS_VERIFY => MEETING_SPACE_GRID_STATUS_NEEDS_VERIFY_TEXT,
    MEETING_SPACE_GRID_STATUS_PENDING => MEETING_SPACE_GRID_STATUS_PENDING_TEXT,
    MEETING_SPACE_GRID_STATUS_NEEDS_CHANGE => MEETING_SPACE_GRID_STATUS_NEEDS_CHANGE_TEXT,
    MEETING_SPACE_GRID_STATUS_VERIFIED => MEETING_SPACE_GRID_STATUS_VERIFIED_TEXT,
    MEETING_SPACE_GRID_STATUS_LOST => MEETING_SPACE_GRID_STATUS_LOST_TEXT,
    MEETING_SPACE_GRID_STATUS_INCOMPLETE => MEETING_SPACE_GRID_STATUS_INCOMPLETE_TEXT
  }

  def self.status_string(status)
    MEETING_DATE_STATUS_STRING[status.to_i]
  end

  MEETING_DATE_PROSPECT_OF_BOOKING_VALUES = [
    [ "10%", 0.10 ],
    [ "25%", 0.25 ],
    [ "50%", 0.50 ],
    [ "75%", 0.75 ],
    [ "90%", 0.90 ],
    [ "99%", 0.99 ]
  ]

end