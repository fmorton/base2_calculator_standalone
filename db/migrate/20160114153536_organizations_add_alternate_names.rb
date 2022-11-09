class OrganizationsAddAlternateNames < ActiveRecord::Migration
  def change
    add_column :organizations, :alternate_names, :text
  end
end
