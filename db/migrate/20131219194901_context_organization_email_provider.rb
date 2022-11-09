class ContextOrganizationEmailProvider < ActiveRecord::Migration
  def up
    add_column :context_organizations, :email_provider_id, :text
    add_column :context_organizations, :email_provider_user_id, :text
    add_column :context_organizations, :email_provider_password, :text
    add_column :context_organizations, :email_provider_key, :text
  end

  def down
  end
end
