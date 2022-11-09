class ContextOrganizationCdnServerCount < ActiveRecord::Migration
  def up
    add_column :context_organizations, :cdn_server_count, :integer, :default => 0, :null => false
  end

  def down
  end
end
