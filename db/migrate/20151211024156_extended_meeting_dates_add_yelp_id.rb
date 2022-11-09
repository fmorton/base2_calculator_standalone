class ExtendedMeetingDatesAddYelpId < ActiveRecord::Migration
  def change
    add_column :extended_meeting_dates, :organization_yelp_id, :text
    add_column :extended_meeting_dates, :contact_organization_yelp_id, :text
  end
end
