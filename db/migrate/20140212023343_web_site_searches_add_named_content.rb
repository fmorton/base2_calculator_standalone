class WebSiteSearchesAddNamedContent < ActiveRecord::Migration
  def up
    add_column :web_site_searches, :named_content, :text
  end

  def down
  end
end
