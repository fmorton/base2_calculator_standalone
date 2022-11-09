class MeetingDateGroupTourDatesUseTourAt < ActiveRecord::Migration
  def change
    rename_column :meeting_date_group_tour_dates, :tour_date, :tour_at
  end
end
