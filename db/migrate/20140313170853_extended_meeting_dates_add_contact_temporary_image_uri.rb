class ExtendedMeetingDatesAddContactTemporaryImageUri < ActiveRecord::Migration
  def up
    add_column :extended_meeting_dates, :contact_organization_temporary_image_uri, :text
  end

  def down
  end
end
