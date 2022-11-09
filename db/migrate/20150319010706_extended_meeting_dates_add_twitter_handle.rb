class ExtendedMeetingDatesAddTwitterHandle < ActiveRecord::Migration
  def change
    add_column :extended_meeting_dates, :organization_twitter_handle, :string, :limit => 32
    add_column :extended_meeting_dates, :contact_organization_twitter_handle, :string, :limit => 32
  end
end
