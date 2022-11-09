class MeetingDateAddAttendanceBlock < ActiveRecord::Migration
  def change
    add_column :meeting_dates, :attendance_string, :text
    add_column :extended_meeting_dates, :meeting_date_attendance_string, :text

    add_column :meeting_dates, :total_attendance, :integer, :default => 0, :null => false
    add_column :extended_meeting_dates, :meeting_date_total_attendance, :integer, :default => 0, :null => false
  end
end
