class ContextOrganizationAddTwitterAccess < ActiveRecord::Migration
  def up
    add_column :context_organizations, :twitter_owner, :string, :limit => 64
    add_column :context_organizations, :twitter_owner_id, :string, :limit => 64
    add_column :context_organizations, :twitter_api_key, :string, :limit => 64
    add_column :context_organizations, :twitter_api_secret, :string, :limit => 64
    add_column :context_organizations, :twitter_access_token, :string, :limit => 64
    add_column :context_organizations, :twitter_access_token_secret, :string, :limit => 64
  end

  def down
  end
end
