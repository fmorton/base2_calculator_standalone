class OccupanciesBiggerLabel < ActiveRecord::Migration
  def up
    change_column :occupancies, :occupancy_label, :text
  end

  def down
  end
end
