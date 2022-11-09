class ContextOrganzationAddApiSupport < ActiveRecord::Migration[7.0]
  def change
    add_column :context_organizations, :api_username, :text
    add_column :context_organizations, :api_password, :text
    add_column :context_organizations, :api_token, :text
    add_column :context_organizations, :api_ip_address, :text
  end
end
