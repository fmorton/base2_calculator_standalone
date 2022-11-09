class EventsAddUsesEventDatePatterns < ActiveRecord::Migration
  def up
    add_column :events, :uses_event_date_patterns, :boolean, :default => false
  end

  def down
  end
end
