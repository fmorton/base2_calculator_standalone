class EventAddContestSupport < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :contest_name, :text
    add_column :events, :contest_description, :text
    add_column :events, :contest_starts_at, :date
    add_column :events, :contest_ends_at, :date
    add_column :events, :contest_event_at, :date
    add_column :events, :contest_featured, :boolean, :default => false, :null => false
  end
end
