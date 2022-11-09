class OrganizationsAddUmbrella < ActiveRecord::Migration
  def up
    add_column :organizations, :umbrella, :boolean, :default => false
  end

  def down
  end
end
