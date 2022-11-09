class WebSiteSearchesAddAnalyticsScore < ActiveRecord::Migration
  def up
    add_column :web_site_searches, :analytics_score, :integer, :default => 0, :null => false
  end

  def down
  end
end
