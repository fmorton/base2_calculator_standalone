class ContextOrganizationAddBlockList < ActiveRecord::Migration[6.0]
  def change
    add_column :context_organizations, :email_block_list, :text
  end
end
