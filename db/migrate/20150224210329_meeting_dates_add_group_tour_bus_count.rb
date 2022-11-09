class MeetingDatesAddGroupTourBusCount < ActiveRecord::Migration
  def change
    add_column :meeting_dates, :group_tour_bus_count, :integer, :default => 0, :null => false
    add_column :extended_meeting_dates, :meeting_date_group_tour_bus_count, :integer, :default => 0, :null => false
  end
end
