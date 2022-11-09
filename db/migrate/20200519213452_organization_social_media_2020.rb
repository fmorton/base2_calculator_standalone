class OrganizationSocialMedia2020 < ActiveRecord::Migration[6.0]
  def change
    change_column :organizations, :twitter_handle, :text

    add_column :organizations, :facebook_uri, :text
    add_column :organizations, :instagram_username, :text
  end
end
