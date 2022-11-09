class MeetingDateResponseAddSelected < ActiveRecord::Migration[5.0]
  def change
    add_column :meeting_date_responses, :selected, :boolean, :default => true, :null => false
  end
end
