class ChangeGroupTourTypeId < ActiveRecord::Migration
  def change
    add_column :meeting_date_group_tour_dates, :tour_type_id, :integer, :default => 0, :null => false

    remove_column :meeting_dates, :group_tour_type_id
    remove_column :extended_meeting_dates, :meeting_date_group_tour_type_id
  end
end
