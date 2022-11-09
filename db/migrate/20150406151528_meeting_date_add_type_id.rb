class MeetingDateAddTypeId < ActiveRecord::Migration
  def change
    add_column :meeting_dates, :type_id, :integer, :default => 0, :null => false
    add_column :extended_meeting_dates, :meeting_date_type_id, :integer, :default => 0, :null => false
  end
end
