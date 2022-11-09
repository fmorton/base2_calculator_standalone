class CvbPhoneNumbersBigger < ActiveRecord::Migration
  def change
    change_column :extended_meeting_dates, :organization_phone_main, :string, :limit => 64
    change_column :extended_meeting_dates, :organization_phone_fax, :string, :limit => 64
    change_column :extended_meeting_dates, :organization_phone_toll_free, :string, :limit => 64
    change_column :extended_meeting_dates, :contact_phone_home, :string, :limit => 64
    change_column :extended_meeting_dates, :contact_phone_mobile, :string, :limit => 64
    change_column :extended_meeting_dates, :contact_phone_work, :string, :limit => 64
    change_column :extended_meeting_dates, :contact_organization_phone_main, :string, :limit => 64
    change_column :extended_meeting_dates, :contact_organization_phone_fax, :string, :limit => 64
    change_column :extended_meeting_dates, :contact_organization_phone_toll_free, :string, :limit => 64
    change_column :extended_meeting_dates, :contact_phone_fax, :string, :limit => 64
  end
end
