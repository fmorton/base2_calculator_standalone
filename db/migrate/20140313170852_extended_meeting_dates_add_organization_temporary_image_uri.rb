class ExtendedMeetingDatesAddOrganizationTemporaryImageUri < ActiveRecord::Migration
  def up
    add_column :extended_meeting_dates, :organization_temporary_image_uri, :text
  end

  def down
  end
end
