class PeopleAddApprovalTypeId < ActiveRecord::Migration
  def change
    add_column :people, :approval_type_id, :integer, :default => 0, :null => false
    add_column :extended_meeting_dates, :contact_approval_type_id, :integer, :default => 0, :null => false
  end
end
