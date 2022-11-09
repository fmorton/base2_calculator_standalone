class SupplierOrganizationsAddAresName < ActiveRecord::Migration[6.0]
  def change
    add_column :supplier_organizations, :ares_name, :text
  end
end
