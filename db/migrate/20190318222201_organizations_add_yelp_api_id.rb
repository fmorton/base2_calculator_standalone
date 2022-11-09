class OrganizationsAddYelpApiId < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :yelp_api_id, :text
  end
end
