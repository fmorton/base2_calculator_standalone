class EconomicsAddMissingFields < ActiveRecord::Migration
  def change
    add_column :extended_meeting_dates, :economic_impact_cc_adjustment_direct_cost, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :meeting_date_economic_impacts, :cc_adjustment_direct_cost, :decimal, :precision => 12, :scale => 2, :default => 0.0

    add_column :extended_meeting_dates, :economic_impact_cc_total_direct_cost_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :meeting_date_economic_impacts, :cc_total_direct_cost_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0

    #add_column :extended_meeting_dates, :economic_impact_cc_total_direct_cost, :decimal, :precision => 12, :scale => 2, :default => 0.0
    #add_column :meeting_date_economic_impacts, :cc_total_direct_cost, :decimal, :precision => 12, :scale => 2, :default => 0.0

    add_column :extended_meeting_dates, :economic_impact_cc_total_net_revenue_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :meeting_date_economic_impacts, :cc_total_net_revenue_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0

    add_column :extended_meeting_dates, :economic_impact_cc_total_net_revenue_operations_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :meeting_date_economic_impacts, :cc_total_net_revenue_operations_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0

    add_column :extended_meeting_dates, :economic_impact_cc_total_net_revenue_debt_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :meeting_date_economic_impacts, :cc_total_net_revenue_debt_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0

    add_column :extended_meeting_dates, :economic_impact_cc_total_net_net_revenue_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :meeting_date_economic_impacts, :cc_total_net_net_revenue_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0

    add_column :extended_meeting_dates, :economic_impact_cc_overhead_direct_cost_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :meeting_date_economic_impacts, :cc_overhead_direct_cost_all_space, :decimal, :precision => 12, :scale => 2, :default => 0.0

    add_column :extended_meeting_dates, :economic_impact_cc_overhead_direct_cost_difference, :decimal, :precision => 12, :scale => 2, :default => 0.0
    add_column :meeting_date_economic_impacts, :cc_overhead_direct_cost_difference, :decimal, :precision => 12, :scale => 2, :default => 0.0
  end
end
