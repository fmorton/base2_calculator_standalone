class OccupanciesBiggerIntegers < ActiveRecord::Migration
  def change
    change_column :occupancies, :adr, :bigint, :default => 0
    change_column :occupancies, :census_property_count, :bigint, :default => 0
    change_column :occupancies, :census_room_count, :bigint, :default => 0
    change_column :occupancies, :contract_demand, :bigint, :default => 0
    change_column :occupancies, :contract_revenue, :bigint, :default => 0
    change_column :occupancies, :demand, :bigint, :default => 0
    change_column :occupancies, :group_demand, :bigint, :default => 0
    change_column :occupancies, :group_revenue, :bigint, :default => 0
    change_column :occupancies, :revenue, :bigint, :default => 0
    change_column :occupancies, :supply, :bigint, :default => 0
    change_column :occupancies, :transient_demand, :bigint, :default => 0
    change_column :occupancies, :transient_revenue, :bigint, :default => 0

    change_column :monthly_occupancies, :adr, :bigint, :default => 0
    change_column :monthly_occupancies, :census_property_count, :bigint, :default => 0
    change_column :monthly_occupancies, :census_room_count, :bigint, :default => 0
    change_column :monthly_occupancies, :contract_demand, :bigint, :default => 0
    change_column :monthly_occupancies, :contract_revenue, :bigint, :default => 0
    change_column :monthly_occupancies, :demand, :bigint, :default => 0
    change_column :monthly_occupancies, :group_demand, :bigint, :default => 0
    change_column :monthly_occupancies, :group_revenue, :bigint, :default => 0
    change_column :monthly_occupancies, :revenue, :bigint, :default => 0
    change_column :monthly_occupancies, :supply, :bigint, :default => 0
    change_column :monthly_occupancies, :transient_demand, :bigint, :default => 0
    change_column :monthly_occupancies, :transient_revenue, :bigint, :default => 0
  end
end
