class OrganizationSupplierAccessibilityUri < ActiveRecord::Migration[5.2]
  def change
    add_column :supplier_organizations, :accessibility_uri, :text
  end
end
