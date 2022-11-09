class SupplierOrganizationsRenameVenueSpace < ActiveRecord::Migration[5.2]
  def change
    rename_column :supplier_organizations, :private_dining_details, :venue_space_details
  end
end
