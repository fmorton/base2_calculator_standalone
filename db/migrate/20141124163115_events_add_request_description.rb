class EventsAddRequestDescription < ActiveRecord::Migration
  def up
    add_column :events, :request_description, :text
  end

  def down
  end
end
