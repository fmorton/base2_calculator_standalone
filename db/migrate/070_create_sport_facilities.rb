class CreateSportFacilities < ActiveRecord::Migration
  def change
    create_table :sport_facilities do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "organization_id", :default => 0, :null => false
      t.integer  "sport_id", :default => 0, :null => false
      t.text     "description"
      t.string   "field_count", :limit => 32
      t.string   "field_lighted_count", :limit => 32
      t.string   "field_width", :limit => 32
      t.string   "field_length", :limit => 32
      t.string   "field_turf", :limit => 32
      t.string   "field_irrigated_count", :limit => 32
      t.string   "field_infield_turf", :limit => 32
      t.string   "field_outfield_length", :limit => 32
      t.string   "field_mound", :limit => 32
      t.string   "score_board_count", :limit => 32
      t.string   "spectator_seating", :limit => 32
      t.string   "pressbox", :limit => 32
      t.string   "parking_capacity", :limit => 32
      t.string   "washrooms", :limit => 32
      t.string   "concessions", :limit => 32
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end
end