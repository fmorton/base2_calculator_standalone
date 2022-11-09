class WebRequestsAddRequestAt < ActiveRecord::Migration
  def change
    add_column :web_requests, :request_at, :date
  end
end
