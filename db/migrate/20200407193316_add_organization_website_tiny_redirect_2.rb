class AddOrganizationWebsiteTinyRedirect2 < ActiveRecord::Migration[5.2]
  def change
    add_column :extended_meeting_dates, :contact_organization_website_tiny_redirect, :text
    add_column :extended_meeting_dates, :organization_website_tiny_redirect, :text
  end
end
