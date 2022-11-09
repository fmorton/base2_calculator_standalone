class OrganizationsAddTemporaryImageUri < ActiveRecord::Migration
  def up
    add_column :organizations, :temporary_image_uri, :text
  end

  def down
  end
end
