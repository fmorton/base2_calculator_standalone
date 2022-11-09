class WebSiteSearchesAddProperties < ActiveRecord::Migration
  def up
    add_column :web_site_searches, :address, :text
    add_column :web_site_searches, :date_end, :text
    add_column :web_site_searches, :date_range, :text
    add_column :web_site_searches, :date_start, :text
    add_column :web_site_searches, :organization_type, :text
    add_column :web_site_searches, :phone_fax, :text
    add_column :web_site_searches, :phone_main, :text
    add_column :web_site_searches, :phone_toll_free, :text
    add_column :web_site_searches, :sort_name, :text
    add_column :web_site_searches, :venue_id, :integer, :default => 0, :null => false
    add_column :web_site_searches, :venue_name, :text
    add_column :web_site_searches, :venue_uri, :text
  end

  def down
  end
end
