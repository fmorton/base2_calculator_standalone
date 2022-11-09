class ExtendedSalesLeadsAddContactOrganizationUmbrella < ActiveRecord::Migration
  def up
    add_column :extended_meeting_dates, :contact_organization_umbrella, :boolean, :default => false
  end

  def down
  end
end
