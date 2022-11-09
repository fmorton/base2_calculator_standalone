class WebSiteSearchesAddDateRangeWithTimes < ActiveRecord::Migration
  def up
    add_column :web_site_searches, :date_range_with_times, :text, :after => :date_start
  end

  def down
  end
end
