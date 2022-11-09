class MonthlyOccupanciesAddSegmentId < ActiveRecord::Migration
  def change
    add_column :monthly_occupancies, :segment_id, :integer, :default => 0, :null => false

    add_index "monthly_occupancies", ["segment_id"], :name => "index_monthly_occupancies_on_segment_id"
  end
end
