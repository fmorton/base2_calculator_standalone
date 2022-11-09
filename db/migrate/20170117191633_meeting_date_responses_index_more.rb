class MeetingDateResponsesIndexMore < ActiveRecord::Migration[5.0]
  def change
    add_index "meeting_date_responses", ["accommodation_id"]
    add_index "meeting_date_responses", ["approval_status"]
  end
end






