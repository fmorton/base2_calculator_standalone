class ExtendedSalesLeadsAddOrganizationUmbrella < ActiveRecord::Migration
  def up
    add_column :extended_meeting_dates, :organization_umbrella, :boolean, :default => false
  end

  def down
  end
end
