class AddAdTrackingSupport < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :tracking_content, :text
    add_column :events, :tracking_content, :text
    add_column :organizations, :tracking_content, :text
    add_column :redirects, :tracking_content, :text

    add_column :contents, :tracking_start_at, :date
    add_column :events, :tracking_start_at, :date
    add_column :organizations, :tracking_start_at, :date
    add_column :redirects, :tracking_start_at, :date

    add_column :contents, :tracking_end_at, :date
    add_column :events, :tracking_end_at, :date
    add_column :organizations, :tracking_end_at, :date
    add_column :redirects, :tracking_end_at, :date
  end
end
