class MeetingDateResponseStatusLogsBiggerRate < ActiveRecord::Migration[5.0]
  def change
    change_column :meeting_date_response_status_logs, :rate, :text
  end
end
