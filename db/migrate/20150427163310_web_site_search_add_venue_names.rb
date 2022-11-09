class WebSiteSearchAddVenueNames < ActiveRecord::Migration
  def change
    add_column :web_site_searches, :venue_names, :text
  end
end
