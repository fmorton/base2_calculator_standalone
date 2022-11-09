class GenerallyAddAdTypeLabelCvb < ActiveRecord::Migration[5.2]
  def change
    add_column :extended_meeting_dates, :organization_ad_type_id, :integer, :default => 0, :null => false
    add_column :extended_meeting_dates, :contact_organization_ad_type_id, :integer, :default => 0, :null => false
  end
end
