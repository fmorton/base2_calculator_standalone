class MeetingDatesAddServicesNote < ActiveRecord::Migration[5.2]
  def change
    add_column :meeting_dates, :services_notes, :text
    add_column :extended_meeting_dates, :meeting_date_services_notes, :text
  end
end
