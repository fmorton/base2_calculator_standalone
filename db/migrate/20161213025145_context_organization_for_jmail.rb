class ContextOrganizationForJmail < ActiveRecord::Migration[5.0]
  def change
    add_column :context_organizations, :jmail_website, :text
    add_column :context_organizations, :jmail_from, :text
  end
end
