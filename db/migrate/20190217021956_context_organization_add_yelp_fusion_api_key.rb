class ContextOrganizationAddYelpFusionApiKey < ActiveRecord::Migration[5.2]
  def change
    add_column :context_organizations, :yelp_fusion_client_id, :text
    add_column :context_organizations, :yelp_fusion_api_key, :text
  end
end
