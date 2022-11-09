class SupplierOrganizationsIndexSalesManagerId < ActiveRecord::Migration
  def change
    add_index "supplier_organizations", ["organization_id"], :name => "index_supplier_organizations_on_organization_id"
  end
end
