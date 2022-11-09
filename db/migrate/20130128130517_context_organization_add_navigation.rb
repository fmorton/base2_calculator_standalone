class ContextOrganizationAddNavigation < ActiveRecord::Migration
  def up
    add_column :context_organizations, :navigation, :text
  end

  def down
  end
end
