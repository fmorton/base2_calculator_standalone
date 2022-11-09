class ContextOrganizationAddShortName < ActiveRecord::Migration
  def up
    add_column :context_organizations, :short_name, :string, :limit => 32, :after => :name
    add_column :context_organizations, :logo_uri, :text
    add_column :context_organizations, :small_logo_uri, :text
  end

  def down
  end
end
