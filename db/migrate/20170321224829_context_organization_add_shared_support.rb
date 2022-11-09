class ContextOrganizationAddSharedSupport < ActiveRecord::Migration[5.0]
  def change
    add_column :context_organizations, :shared_context_organization_ids, :text
  end
end
