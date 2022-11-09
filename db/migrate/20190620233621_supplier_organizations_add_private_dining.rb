class SupplierOrganizationsAddPrivateDining < ActiveRecord::Migration[5.2]
  def change
    add_column :supplier_organizations, :private_dining_capacity, :integer, :default => 0, :null => false
    add_column :supplier_organizations, :private_dining_details, :text
  end
end
