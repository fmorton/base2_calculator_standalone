class ContextOrganizationEmailProviderApiClassName < ActiveRecord::Migration
  def up
    add_column :context_organizations, :email_provider_api_class_name, :text
  end

  def down
  end
end
