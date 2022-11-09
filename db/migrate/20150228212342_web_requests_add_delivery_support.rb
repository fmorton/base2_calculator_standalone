class WebRequestsAddDeliverySupport < ActiveRecord::Migration
  def change
    add_column :web_requests, :purpose_id, :integer, :default => 0, :null => false
    add_column :web_requests, :source_id, :integer, :default => 0, :null => false
    add_column :web_requests, :count_value, :integer, :default => 0, :null => false
    add_column :web_requests, :delivery_method_id, :integer, :default => 0, :null => false
    add_column :web_requests, :delivered_at, :date
  end
end
