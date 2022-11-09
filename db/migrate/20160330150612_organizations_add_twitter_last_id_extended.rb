class OrganizationsAddTwitterLastIdExtended < ActiveRecord::Migration
  def change
    add_column :extended_meeting_dates, :organization_twitter_last_id, :string, :limit => 64
    add_column :extended_meeting_dates, :contact_organization_twitter_last_id, :string, :limit => 64
  end
end
