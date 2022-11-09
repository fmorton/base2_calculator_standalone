class GroupTourAddGuaranteeAt < ActiveRecord::Migration
  def change
    add_column :meeting_date_group_tour_dates, :guarantee_at, :date
  end
end
