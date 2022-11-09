class ContextOrganizationAddSocialMedia < ActiveRecord::Migration
  def up
    add_column :context_organizations, :facebook_api_id, :string, :limit => 64
    add_column :context_organizations, :facebook_api_key, :string, :limit => 64
    add_column :context_organizations, :facebook_secret, :string, :limit => 64
    add_column :context_organizations, :instagram_client_id, :string, :limit => 64
    add_column :context_organizations, :instagram_client_secret, :string, :limit => 64
    add_column :context_organizations, :instagram_uri, :text
    add_column :context_organizations, :pinterest_client_id, :string, :limit => 64
    add_column :context_organizations, :pinterest_client_secret, :string, :limit => 64
    add_column :context_organizations, :pinterest_password, :string, :limit => 64
    add_column :context_organizations, :pinterest_username, :string, :limit => 64
    add_column :context_organizations, :yelp_consumer_key, :string, :limit => 64
    add_column :context_organizations, :yelp_consumer_secret, :string, :limit => 64
    add_column :context_organizations, :yelp_token, :string, :limit => 64
    add_column :context_organizations, :yelp_token_secret, :string, :limit => 64
    add_column :context_organizations, :yelp_version_1_key, :string, :limit => 64
 end

  def down
  end
end
