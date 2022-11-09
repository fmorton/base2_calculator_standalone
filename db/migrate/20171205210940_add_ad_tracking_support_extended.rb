class AddAdTrackingSupportExtended < ActiveRecord::Migration[5.1]
  def change
    add_column :extended_meeting_dates, :organization_tracking_content, :text
    add_column :extended_meeting_dates, :contact_organization_tracking_content, :text

    add_column :extended_meeting_dates, :organization_tracking_start_at, :date
    add_column :extended_meeting_dates, :contact_organization_tracking_start_at, :date

    add_column :extended_meeting_dates, :organization_tracking_end_at, :date
    add_column :extended_meeting_dates, :contact_organization_tracking_end_at, :date
  end
end
