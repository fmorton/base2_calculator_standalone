class AddDataSourceOwnerIdCvb < ActiveRecord::Migration
  def change
    add_column :meetings, :data_source_owner_id, :string, :limit => 32
    add_column :meeting_dates, :data_source_owner_id, :string, :limit => 32
    add_column :meeting_date_responses, :data_source_owner_id, :string, :limit => 32

    add_column :extended_meeting_dates, :meeting_data_source_owner_id, :string, :limit => 32
    add_column :extended_meeting_dates, :meeting_date_data_source_owner_id, :string, :limit => 32
    add_column :extended_meeting_dates, :organization_data_source_owner_id, :string, :limit => 32
    add_column :extended_meeting_dates, :contact_data_source_owner_id, :string, :limit => 32
    add_column :extended_meeting_dates, :contact_organization_data_source_owner_id, :string, :limit => 32
  end
end
