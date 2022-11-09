class MeetingDatesAddShared < ActiveRecord::Migration[5.0]
  def change
    add_column :meeting_dates, :shared, :boolean, :default => false, :null => false
    add_column :extended_meeting_dates, :meeting_date_shared, :boolean, :default => false, :null => false
  end
end


