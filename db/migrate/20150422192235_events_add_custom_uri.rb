class EventsAddCustomUri < ActiveRecord::Migration
  def change
    add_column :events, :custom_uri, :text
    add_column :events, :custom_uri_description, :text
  end
end
