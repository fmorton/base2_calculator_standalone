class OrganizationsAddCoordinatesUpdatedAt < ActiveRecord::Migration
  def up
    add_column :organizations, :coordinates_updated_at, :datetime
    add_column :extended_meeting_dates, :contact_organization_coordinates_updated_at, :datetime
    add_column :extended_meeting_dates, :organization_coordinates_updated_at, :datetime
  end

  def down
  end
end
