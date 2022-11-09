class OccupanciesAddSegmentId < ActiveRecord::Migration
  def change
    add_column :occupancies, :segment_id, :integer, :default => 0, :null => false

    add_index "occupancies", ["segment_id"], :name => "index_occupancies_on_segment_id"
  end
end
