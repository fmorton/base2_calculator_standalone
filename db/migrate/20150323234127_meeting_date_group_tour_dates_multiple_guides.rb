class MeetingDateGroupTourDatesMultipleGuides < ActiveRecord::Migration
  def change
    remove_column :meeting_date_group_tour_dates, :tour_guide_id
    add_column :meeting_date_group_tour_dates, :tour_guide_1_id, :integer, :default => 0, :null => false
    add_column :meeting_date_group_tour_dates, :tour_guide_2_id, :integer, :default => 0, :null => false
    add_column :meeting_date_group_tour_dates, :tour_guide_3_id, :integer, :default => 0, :null => false
    add_column :meeting_date_group_tour_dates, :tour_guide_4_id, :integer, :default => 0, :null => false
  end
end
