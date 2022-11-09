class TapReportsAddRoomNightsUsed < ActiveRecord::Migration[5.2]
  def change
    add_column :tap_reports, :room_nights_used, :bigint, :default => 0, :null => false
  end
end
