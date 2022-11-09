class WebSiteSearchesAddCoordinates < ActiveRecord::Migration
  def up
    add_column :web_site_searches, :coordinates, :string, :limit => 64
  end

  def down
  end
end
