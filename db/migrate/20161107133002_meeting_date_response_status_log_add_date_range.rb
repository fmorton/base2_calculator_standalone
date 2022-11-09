class MeetingDateResponseStatusLogAddDateRange < ActiveRecord::Migration[5.0]
  def change
    add_column :meeting_date_response_status_logs, :date_range, :string, :limit => 80
  end
end
