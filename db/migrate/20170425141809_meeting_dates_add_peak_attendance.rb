class MeetingDatesAddPeakAttendance < ActiveRecord::Migration[5.0]
  def change
    add_column :meeting_dates, :peak_attendance, :integer, :default => 0, :null => false
    add_column :extended_meeting_dates, :meeting_date_peak_attendance, :integer, :default => 0, :null => false
  end
end
