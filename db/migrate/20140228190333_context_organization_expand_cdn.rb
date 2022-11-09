class ContextOrganizationExpandCdn < ActiveRecord::Migration
  def up
    add_column :context_organizations, :cdn_server_name, :string, :limit => 64
    add_column :context_organizations, :cdn_bucket_name, :string, :limit => 32
  end

  def down
  end
end
