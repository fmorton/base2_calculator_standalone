class MeetingDatesAddHideFromDashboard < ActiveRecord::Migration
  def up
    add_column :meeting_dates, :hide_from_dashboard, :boolean, :default => false, :null => false
    add_column :extended_meeting_dates, :meeting_date_hide_from_dashboard, :boolean, :default => false, :null => false
  end

  def down
  end
end
