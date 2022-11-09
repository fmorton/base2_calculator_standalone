class MeetingDatesAddHideFromCalendar < ActiveRecord::Migration
  def change
    add_column :meeting_dates, :hide_from_calendar, :boolean, :default => false, :null => false
    add_column :extended_meeting_dates, :meeting_date_hide_from_calendar, :boolean, :default => false, :null => false
  end
end
