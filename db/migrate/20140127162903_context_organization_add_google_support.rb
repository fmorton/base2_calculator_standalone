class ContextOrganizationAddGoogleSupport < ActiveRecord::Migration
  def up
    add_column :context_organizations, :google_account_id, :text
    add_column :context_organizations, :google_username, :text
    add_column :context_organizations, :google_password, :text
  end

  def down
  end
end
