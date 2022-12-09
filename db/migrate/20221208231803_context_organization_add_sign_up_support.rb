class ContextOrganizationAddSignUpSupport < ActiveRecord::Migration[7.0]
  def change
    add_column :context_organizations, :sign_up_by, :integer, default: 0, null: false
    add_column :context_organizations, :sign_up_email, :string
    add_column :context_organizations, :sign_up_start_at, :datetime
    add_column :context_organizations, :sign_up_end_at, :datetime
  end
end
