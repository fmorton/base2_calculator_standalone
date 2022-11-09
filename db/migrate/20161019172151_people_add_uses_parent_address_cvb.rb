class PeopleAddUsesParentAddressCvb < ActiveRecord::Migration[5.0]
  def change
    add_column :extended_meeting_dates, :contact_use_parent_address, :boolean, :default => false, :null => false
    add_column :extended_meeting_dates, :contact_use_parent_shipping_address, :boolean, :default => false, :null => false
  end
end
