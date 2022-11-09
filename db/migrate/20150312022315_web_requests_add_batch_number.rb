class WebRequestsAddBatchNumber < ActiveRecord::Migration
  def change
    add_column :web_requests, :batch_id, :integer, :default => 0, :null => false
  end
end
