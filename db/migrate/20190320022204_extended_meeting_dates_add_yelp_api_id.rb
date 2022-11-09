class ExtendedMeetingDatesAddYelpApiId < ActiveRecord::Migration[5.2]
  def change
    add_column :extended_meeting_dates, :contact_organization_yelp_api_id, :text
    add_column :extended_meeting_dates, :organization_yelp_api_id, :text
  end
end
