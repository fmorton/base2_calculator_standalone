class AddressUseParentAddressTrue < ActiveRecord::Migration[5.2]
  def change
    change_column_default :people, :use_parent_address, true
    change_column_default :people, :use_parent_shipping_address, true
    change_column_default :extended_meeting_dates, :contact_use_parent_address, true
    change_column_default :extended_meeting_dates, :contact_use_parent_shipping_address, true

    change_column :people, :use_parent_address, :boolean, :null => true
    change_column :people, :use_parent_shipping_address, :boolean, :null => true
    change_column :extended_meeting_dates, :contact_use_parent_address, :boolean, :null => true
    change_column :extended_meeting_dates, :contact_use_parent_shipping_address, :boolean, :null => true
  end
end
