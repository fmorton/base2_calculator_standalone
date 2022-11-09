class MeetingDatesAddCanceled < ActiveRecord::Migration
  def up
    add_column :meeting_dates, :canceled, :boolean, :default => false, :null => false
    add_column :extended_meeting_dates, :meeting_date_canceled, :boolean, :default => false, :null => false
  end

  def down
  end
end
