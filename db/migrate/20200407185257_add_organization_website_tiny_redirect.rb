class AddOrganizationWebsiteTinyRedirect < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :website_tiny_redirect, :text
  end
end
