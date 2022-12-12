class ContextOrganizationAddFeatures < ActiveRecord::Migration[7.0]
  def change
    add_column :context_organizations, :sign_up_features, :string
    add_column :context_organizations, :sign_up_level, :integer, default: 0, null: false
  end
end
