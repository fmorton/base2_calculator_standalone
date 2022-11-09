class MeetingDateFinancialCommitmentsAddIndex < ActiveRecord::Migration[5.0]
  def change
    add_index "meeting_date_financial_commitments", ["meeting_date_id"], :name => "index_meeting_date_id"
  end
end
