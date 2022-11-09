class GroupTourDatesAddDetails < ActiveRecord::Migration
  def change
    remove_column :meeting_dates, :group_tour_bus_count
    remove_column :extended_meeting_dates, :meeting_date_group_tour_bus_count

    add_column :meeting_date_group_tour_dates, :notes, :text
    add_column :meeting_date_group_tour_dates, :tiny_notes, :string, :limit => 64
    add_column :meeting_date_group_tour_dates, :video_times, :string, :limit => 64

    add_column :meeting_date_group_tour_dates, :due_at, :date
    add_column :meeting_date_group_tour_dates, :deposit_amount, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :meeting_date_group_tour_dates, :balance_due, :decimal, :precision => 12, :scale => 2, :default => 0.0
  end
end
