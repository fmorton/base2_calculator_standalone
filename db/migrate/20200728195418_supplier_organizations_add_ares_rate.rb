class SupplierOrganizationsAddAresRate < ActiveRecord::Migration[6.0]
  def change
    add_column :supplier_organizations, :ares_rate, :text
  end
end
