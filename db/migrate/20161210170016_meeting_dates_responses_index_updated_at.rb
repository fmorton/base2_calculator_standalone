class MeetingDatesResponsesIndexUpdatedAt < ActiveRecord::Migration[5.0]
  def change
    add_index "meeting_dates", ["updated_at"]
    add_index "meeting_date_responses", ["updated_at"]
  end
end
