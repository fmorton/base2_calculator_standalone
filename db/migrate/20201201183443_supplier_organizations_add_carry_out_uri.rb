class SupplierOrganizationsAddCarryOutUri < ActiveRecord::Migration[6.0]
  def change
    add_column :supplier_organizations, :restaurant_carry_out_uri, :text
  end
end
