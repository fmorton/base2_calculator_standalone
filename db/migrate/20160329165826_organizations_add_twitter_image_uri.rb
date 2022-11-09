class OrganizationsAddTwitterImageUri < ActiveRecord::Migration
  def change
    add_column :organizations, :twitter_image_uri, :text
  end
end
