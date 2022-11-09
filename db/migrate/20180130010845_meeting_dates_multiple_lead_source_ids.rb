class MeetingDatesMultipleLeadSourceIds < ActiveRecord::Migration[5.1]
  def change
    rename_column :meeting_dates, :lead_source_id, :lead_source_1_id
    rename_column :extended_meeting_dates, :meeting_date_lead_source_id, :meeting_date_lead_source_1_id
    rename_column :extended_meeting_dates, :meeting_date_lead_source, :meeting_date_lead_source_1

    add_column :meeting_dates, :lead_source_2_id, :integer, :default => 0, :null => false
    add_column :meeting_dates, :lead_source_3_id, :integer, :default => 0, :null => false

    add_column :extended_meeting_dates, :meeting_date_lead_source_2_id, :integer, :default => 0, :null => false
    add_column :extended_meeting_dates, :meeting_date_lead_source_3_id, :integer, :default => 0, :null => false

    add_column :extended_meeting_dates, :meeting_date_lead_source_2, :string, :limit => 64
    add_column :extended_meeting_dates, :meeting_date_lead_source_3, :string, :limit => 64
  end
end
