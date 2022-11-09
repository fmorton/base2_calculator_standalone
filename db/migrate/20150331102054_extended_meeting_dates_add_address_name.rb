class ExtendedMeetingDatesAddAddressName < ActiveRecord::Migration
  def change
    add_column :extended_meeting_dates, :contact_address_name, :string
    add_column :extended_meeting_dates, :contact_organization_address_name, :string
    add_column :extended_meeting_dates, :contact_specific_address_name, :string
    add_column :extended_meeting_dates, :organization_address_name, :string
  end
end
