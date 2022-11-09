class MeetingDatesAddTentativeRoomNights < ActiveRecord::Migration
  def up
    add_column :meeting_dates, :definite_room_nights, :integer, :default => 0, :null => false, :after => :definite_booking_by_id
    add_column :meeting_dates, :tentative_room_nights, :integer, :default => 0, :null => false, :after => :tentative_booking_by_id
    add_column :meeting_dates, :lost_room_nights, :integer, :default => 0, :null => false, :after => :lost_reasons

    add_column :extended_meeting_dates, :meeting_date_definite_room_nights, :integer, :default => 0, :null => false, :after => :meeting_date_definite_booking_by_id
    add_column :extended_meeting_dates, :meeting_date_tentative_room_nights, :integer, :default => 0, :null => false, :after => :meeting_date_tentative_booking_by_id
    add_column :extended_meeting_dates, :meeting_date_lost_room_nights, :integer, :default => 0, :null => false, :after => :meeting_date_lost_reasons
  end

  def down
  end
end
