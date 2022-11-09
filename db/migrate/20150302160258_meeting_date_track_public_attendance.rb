class MeetingDateTrackPublicAttendance < ActiveRecord::Migration
  def change
    add_column :meeting_dates, :delegate_attendance, :integer, :default => 0, :null => false
    add_column :extended_meeting_dates, :meeting_date_delegate_attendance, :integer, :default => 0, :null => false

    add_column :meeting_dates, :public_attendance, :integer, :default => 0, :null => false
    add_column :extended_meeting_dates, :meeting_date_public_attendance, :integer, :default => 0, :null => false
  end
end
