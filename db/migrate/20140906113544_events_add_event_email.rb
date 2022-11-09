class EventsAddEventEmail < ActiveRecord::Migration
  def up
    add_column :events, :event_email, :string, :limit => 64
  end

  def down
  end
end
