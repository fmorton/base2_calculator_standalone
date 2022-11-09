class ExtendedMeetingDatesAddContactOrganizationComments < ActiveRecord::Migration
  def up
    add_column :extended_meeting_dates, :contact_organization_comments, :text
  end

  def down
  end
end
