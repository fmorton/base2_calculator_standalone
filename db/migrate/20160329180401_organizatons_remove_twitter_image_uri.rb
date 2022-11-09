class OrganizatonsRemoveTwitterImageUri < ActiveRecord::Migration
  def change
    remove_column :organizations, :twitter_image_uri
  end
end
