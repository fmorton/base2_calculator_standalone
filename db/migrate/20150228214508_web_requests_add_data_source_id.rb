class WebRequestsAddDataSourceId < ActiveRecord::Migration
  def change
    add_column :web_requests, :data_source_id, :string, :limit => 32
  end
end
