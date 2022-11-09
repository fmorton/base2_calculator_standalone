class UseFewerDatetimes < ActiveRecord::Migration
  def up
    change_column :housing_events, :available_at, :date
    change_column :housing_events, :event_ends_at, :date
    change_column :housing_events, :event_starts_at, :date
    change_column :housing_events, :expire_at, :date
    change_column :meeting_date_approvals, :approval_at, :date
    change_column :meeting_date_response_rates, :signature_meeting_end_at, :date
    change_column :meeting_date_response_rates, :signature_meeting_start_at, :date
    change_column :meeting_qualifications, :qualified_at, :date
    change_column :smiley_faces, :smiley_face_at, :date
    change_column :supplier_organizations, :qualified_at, :date
    change_column :supplier_qualifications, :qualified_at, :date
  end

  def down
  end
end
