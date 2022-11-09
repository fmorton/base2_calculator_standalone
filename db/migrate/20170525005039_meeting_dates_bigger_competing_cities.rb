class MeetingDatesBiggerCompetingCities < ActiveRecord::Migration[5.1]
  def change
    change_column :meeting_dates, :competing_cities, :text
    change_column :extended_meeting_dates, :meeting_date_competing_cities, :text
  end
end
