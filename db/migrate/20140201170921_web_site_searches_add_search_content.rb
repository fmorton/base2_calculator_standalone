class WebSiteSearchesAddSearchContent < ActiveRecord::Migration
  def up
    add_column :web_site_searches, :search_content, :text
  end

  def down
  end
end
