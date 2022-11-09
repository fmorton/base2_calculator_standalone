class WebSiteSearchesAddPosition < ActiveRecord::Migration[5.2]
  def change
    add_column :web_site_searches, :position, :integer, :default => 100, :null => false
  end
end
