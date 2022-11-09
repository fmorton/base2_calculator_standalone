class CreateSalesLeadEconomicImpacts < ActiveRecord::Migration
  def change
    create_table :sales_lead_economic_impacts do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "sales_lead_id", :default => 0, :null => false
      t.integer  "attendance_nights", :default => 0, :null => false
      t.decimal  "average_rate", :precision => 12, :scale => 2, :default => 0.0
      t.integer  "average_nightly_attendance", :default => 0, :null => false
      t.integer  "calculated_gsf", :default => 0, :null => false
      t.decimal  "calculated_people_per_room", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "net_income", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "net_spending_air_traffic", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "net_spending_entertainment", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "net_spending_food", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "net_spending_other", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "net_spending_room", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "net_spending_shopping", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "net_spending_ground_transportation", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "spending_air_traffic", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "spending_entertainment", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "spending_food", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "spending_other", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "spending_room", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "spending_shopping", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "spending_ground_transportation", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_event_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_with_induced", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_direct", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_direct_jobs", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_direct_va", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_direct_wages", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_indirect", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_indirect_jobs", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_indirect_va", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_indirect_wages", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_induced", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_induced_jobs", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_induced_va", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_impact_induced_wages", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_net_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_to_cib", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_to_cib_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "total_tax_to_cib_operations", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_1_label", :limit => 64
      t.decimal  "tax_1_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_1_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_1_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_1_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_1_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_1_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_1_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_1_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_1_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_1_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_2_label", :limit => 64
      t.decimal  "tax_2_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_2_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_2_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_2_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_2_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_2_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_2_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_2_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_2_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_2_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_3_label", :limit => 64
      t.decimal  "tax_3_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_3_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_3_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_3_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_3_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_3_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_3_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_3_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_3_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_3_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_4_label", :limit => 64
      t.decimal  "tax_4_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_4_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_4_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_4_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_4_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_4_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_4_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_4_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_4_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_4_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_5_label", :limit => 64
      t.decimal  "tax_5_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_5_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_5_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_5_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_5_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_5_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_5_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_5_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_5_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_5_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_6_label", :limit => 64
      t.decimal  "tax_6_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_6_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_6_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_6_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_6_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_6_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_6_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_6_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_6_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_6_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_7_label", :limit => 64
      t.decimal  "tax_7_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_7_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_7_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_7_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_7_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_7_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_7_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_7_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_7_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_7_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_8_label", :limit => 64
      t.decimal  "tax_8_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_8_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_8_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_8_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_8_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_8_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_8_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_8_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_8_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_8_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_9_label", :limit => 64
      t.decimal  "tax_9_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_9_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_9_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_9_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_9_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_9_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_9_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_9_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_9_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_9_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_10_label", :limit => 64
      t.decimal  "tax_10_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_10_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_10_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_10_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_10_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_10_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_10_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_10_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_10_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_10_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_11_label", :limit => 64
      t.decimal  "tax_11_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_11_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_11_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_11_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_11_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_11_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_11_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_11_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_11_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_11_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_12_label", :limit => 64
      t.decimal  "tax_12_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_12_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_12_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_12_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_12_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_12_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_12_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_12_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_12_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_12_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_13_label", :limit => 64
      t.decimal  "tax_13_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_13_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_13_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_13_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_13_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_13_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_13_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_13_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_13_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_13_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_14_label", :limit => 64
      t.decimal  "tax_14_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_14_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_14_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_14_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_14_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_14_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_14_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_14_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_14_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_14_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_15_label", :limit => 64
      t.decimal  "tax_15_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_15_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_15_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_15_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_15_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_15_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_15_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_15_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_15_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_15_total", :precision => 12, :scale => 2, :default => 0.0
      t.string   "tax_16_label", :limit => 64
      t.decimal  "tax_16_entity_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_16_entity_1_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_16_entity_1_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_16_entity_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_16_spending", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_16_local", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_16_local_all", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_16_state", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_16_federal", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "tax_16_total", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "economic_attendance", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "percent_local_attendees", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "spending_air_traffic_lever", :precision => 12, :scale => 2, :default => 0.0
      t.text     "spending_air_traffic_lever_note"
      t.decimal  "spending_entertainment_lever", :precision => 12, :scale => 2, :default => 0.0
      t.text     "spending_entertainment_lever_note"
      t.decimal  "spending_food_lever", :precision => 12, :scale => 2, :default => 0.0
      t.text     "spending_food_lever_note"
      t.decimal  "spending_room_lever", :precision => 12, :scale => 2, :default => 0.0
      t.text     "spending_room_lever_note"
      t.decimal  "spending_shopping_lever", :precision => 12, :scale => 2, :default => 0.0
      t.text     "spending_shopping_lever_note"
      t.decimal  "spending_ground_transportation_lever", :precision => 12, :scale => 2, :default => 0.0
      t.text     "spending_ground_transportation_lever_note"
      t.decimal  "cc_adjustment_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_equipment_direct_cost", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_equipment_discount_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_equipment_discount_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_equipment_gross_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_equipment_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_equipment_standard_rate", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_food_and_beverage_direct_cost", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_food_and_beverage_discount_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_food_and_beverage_discount_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_food_and_beverage_gross_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_food_and_beverage_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_food_and_beverage_standard_rate", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_internet_direct_cost", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_internet_discount_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_internet_discount_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_internet_gross_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_internet_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_internet_standard_rate", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_labor_reimbursement_direct_cost", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_labor_reimbursement_discount_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_labor_reimbursement_discount_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_labor_reimbursement_gross_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_labor_reimbursement_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_labor_reimbursement_standard_rate", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_other_direct_cost", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_other_discount_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_other_discount_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_other_gross_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_other_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_other_standard_rate", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_overhead_direct_cost", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_overhead_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_space_rental_direct_cost", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_space_rental_discount_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_space_rental_discount_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_space_rental_gross_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_space_rental_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_space_rental_standard_rate", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_direct_cost", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_discount_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_discount_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_gross_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_gross_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_net_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_net_revenue_debt", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_net_revenue_operations", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_net_revenue_per_gsf", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_net_revenue_per_gsf_all_space", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_total_standard_rate", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_utilities_direct_cost", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_utilities_discount_1", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_utilities_discount_2", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_utilities_gross_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_utilities_net_revenue", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "cc_utilities_standard_rate", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "impact_convention_operations_direct_total", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "impact_convention_operations_indirect_total", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "impact_convention_operations_induced_total", :precision => 12, :scale => 2, :default => 0.0
      t.decimal  "impact_convention_operations_jobs_total", :precision => 12, :scale => 2, :default => 0.0
      t.integer  "calculated_gsf_all_space", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "sales_lead_economic_impacts", ["sales_lead_id"], :name => "index_economic_impacts_on_sales_lead_id"
  end
end