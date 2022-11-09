class OrganizationsAddComments < ActiveRecord::Migration
  def up
    add_column :organizations, :comments, :text
  end

  def down
  end
end
