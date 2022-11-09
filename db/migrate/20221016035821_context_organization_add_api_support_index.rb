class ContextOrganizationAddApiSupportIndex < ActiveRecord::Migration[7.0]
  def change
    add_index "context_organizations", ["api_username"]
  end
end
