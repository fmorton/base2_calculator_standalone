class ExtendedMeetingDatesBiggerFields < ActiveRecord::Migration[5.2]
  def change
    change_column :extended_meeting_dates, :contact_name, :text
    change_column :extended_meeting_dates, :contact_name_first, :text
    change_column :extended_meeting_dates, :contact_name_last, :text
  end
end
