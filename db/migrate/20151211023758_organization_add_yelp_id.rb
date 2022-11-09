class OrganizationAddYelpId < ActiveRecord::Migration
  def change
    add_column :organizations, :yelp_id, :text
  end
end
