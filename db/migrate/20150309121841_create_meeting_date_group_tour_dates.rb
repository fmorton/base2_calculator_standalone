class CreateMeetingDateGroupTourDates < ActiveRecord::Migration
  def change
    create_table :meeting_date_group_tour_dates do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "meeting_date_id", :default => 0, :null => false
      t.date     "tour_date"
      t.string   "tour_time", :limit => 32
      t.integer  "tour_guide_id", :default => 0, :null => false
      t.integer  "tour_attendance", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.timestamps
    end
  end
end
