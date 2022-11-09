class ExtendedMeetingsAddOrganizationAlternateNames < ActiveRecord::Migration
  def change
    add_column :extended_meeting_dates, :contact_organization_alternate_names, :text
    add_column :extended_meeting_dates, :organization_alternate_names, :text
  end
end
