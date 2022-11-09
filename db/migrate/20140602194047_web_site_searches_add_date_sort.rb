class WebSiteSearchesAddDateSort < ActiveRecord::Migration
  def up
    add_column :web_site_searches, :date_sort, :text, :after => :date_start
  end

  def down
  end
end
