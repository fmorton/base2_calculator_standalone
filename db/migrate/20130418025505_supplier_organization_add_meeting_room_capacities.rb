class SupplierOrganizationAddMeetingRoomCapacities < ActiveRecord::Migration
  def up
    add_column :supplier_organizations, :capacity_10x10, :integer, :default => 0, :null => false
    add_column :supplier_organizations, :banquet_capacity, :integer, :default => 0, :null => false
    add_column :supplier_organizations, :classroom_capacity, :integer, :default => 0, :null => false
    add_column :supplier_organizations, :conference_capacity, :integer, :default => 0, :null => false
    add_column :supplier_organizations, :h_shaped_capacity, :integer, :default => 0, :null => false
    add_column :supplier_organizations, :reception_capacity, :integer, :default => 0, :null => false
    add_column :supplier_organizations, :theater_capacity, :integer, :default => 0, :null => false
    add_column :supplier_organizations, :u_shaped_capacity, :integer, :default => 0, :null => false
    add_column :supplier_organizations, :maximum_capacity, :integer, :default => 0, :null => false
  end

  def down
  end
end
