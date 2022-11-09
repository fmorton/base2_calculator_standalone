class ContentsBiggerAnalyticsName < ActiveRecord::Migration[5.1]
  def change
    change_column :contents, :analytics_name, :string, :limit => 128
  end
end
