class OccupanciesBiggerNumbers < ActiveRecord::Migration
  def change
    change_column :occupancies, :adr, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :adr_percentage_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :census_percentage, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :contract_adr, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :contract_occupancy, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :contract_rev_par, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :demand_percentage_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :group_adr, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :group_occupancy, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :group_rev_par, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :occupancy, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :occupancy_percentage_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :rev_par, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :rev_par_percentage_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :revenue_percentage_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :supply_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :transient_adr, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :transient_occupancy, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :occupancies, :transient_rev_par, :decimal, :precision => 16, :scale => 2, :default => 0.0

    change_column :monthly_occupancies, :adr, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :adr_percentage_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :census_percentage, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :contract_adr, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :contract_occupancy, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :contract_rev_par, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :demand_percentage_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :group_adr, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :group_occupancy, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :group_rev_par, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :occupancy, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :occupancy_percentage_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :rev_par, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :rev_par_percentage_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :revenue_percentage_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :supply_change, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :transient_adr, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :transient_occupancy, :decimal, :precision => 16, :scale => 2, :default => 0.0
    change_column :monthly_occupancies, :transient_rev_par, :decimal, :precision => 16, :scale => 2, :default => 0.0

  end
end
