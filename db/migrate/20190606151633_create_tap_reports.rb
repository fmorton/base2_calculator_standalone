class CreateTapReports < ActiveRecord::Migration[5.2]
  def change
    create_table :tap_reports do |t|
      t.integer :context_organization_id, :default => 0, :null => false
      t.date :file_at
      t.date :booking_at
      t.string :booking_at_string, :limit => 16
      t.integer :booking_day_of_week, :default => 0, :null => false
      t.integer :booking_week_of_year, :default => 0, :null => false
      t.integer :booking_week_and_day, :default => 0, :null => false
      t.bigint :room_nights, :default => 0, :null => false
      t.string :label, :limit => 32
      t.timestamps
    end
  end
end
