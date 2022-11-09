class ContextOrganizationAddNamedContent < ActiveRecord::Migration
  def up
    add_column :context_organizations, :named_content, :text
  end

  def down
  end
end
