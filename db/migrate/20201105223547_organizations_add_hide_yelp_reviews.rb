class OrganizationsAddHideYelpReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :hide_yelp_reviews, :boolean, :null => false, :default => false
  end
end
