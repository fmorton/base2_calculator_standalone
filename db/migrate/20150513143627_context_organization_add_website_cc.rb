class ContextOrganizationAddWebsiteCc < ActiveRecord::Migration
  def change
    add_column :context_organizations, :website, :string, :limit => 64
    add_column :context_organizations, :convention_center_name, :string, :limit => 128
    add_column :context_organizations, :convention_center_short_name, :string, :limit => 32
  end
end
