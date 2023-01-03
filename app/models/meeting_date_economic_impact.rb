#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
class MeetingDateEconomicImpact < ActiveRecord::Base
  include Base2ActiveRecord
  include Base2ContextModel
  include Base2ChangeLogModel
  include Base2ArchiveModel

  ADMISSIONS_TAX = 1
  CORPORATE_INCOME_TAX = 2
  EXCISE_AND_FEES = 3
  HOTEL_TAX = 4
  OTHER_BUSINESS_TAXES = 5
  PERSONAL_INCOME_TAX = 6
  RENTAL_CAR_TAX = 8
  FOOD_AND_BEVERAGE_TAX = 9
  SALES_TAX = 10
  SOCIAL_SECURITY_AND_OTHER_TAXES = 11
  MAX_TAX = 20

  belongs_to :context_organization, :optional => true
  belongs_to :meeting_date, :optional => true

  def context_before_validation_application_extra
    self.attendance_nights = 0 if self.attendance_nights.nil?
    self.average_nightly_attendance = 0 if self.average_nightly_attendance.nil?
    self.average_rate = 0 if self.average_rate.nil?
    self.calculated_gsf = 0 if self.calculated_gsf.nil?
    self.calculated_gsf_all_space = 0 if self.calculated_gsf_all_space.nil?
    self.calculated_people_per_room = 0 if self.calculated_people_per_room.nil?
    self.cc_adjustment_direct_cost = 0 if self.cc_adjustment_direct_cost.nil?
    self.cc_adjustment_net_revenue = 0 if self.cc_adjustment_net_revenue.nil?
    self.cc_equipment_direct_cost = 0 if self.cc_equipment_direct_cost.nil?
    self.cc_equipment_discount_1 = 0 if self.cc_equipment_discount_1.nil?
    self.cc_equipment_discount_2 = 0 if self.cc_equipment_discount_2.nil?
    self.cc_equipment_gross_revenue = 0 if self.cc_equipment_gross_revenue.nil?
    self.cc_equipment_net_revenue = 0 if self.cc_equipment_net_revenue.nil?
    self.cc_equipment_standard_rate = 0 if self.cc_equipment_standard_rate.nil?
    self.cc_food_and_beverage_direct_cost = 0 if self.cc_food_and_beverage_direct_cost.nil?
    self.cc_food_and_beverage_discount_1 = 0 if self.cc_food_and_beverage_discount_1.nil?
    self.cc_food_and_beverage_discount_2 = 0 if self.cc_food_and_beverage_discount_2.nil?
    self.cc_food_and_beverage_gross_revenue = 0 if self.cc_food_and_beverage_gross_revenue.nil?
    self.cc_food_and_beverage_net_revenue = 0 if self.cc_food_and_beverage_net_revenue.nil?
    self.cc_food_and_beverage_standard_rate = 0 if self.cc_food_and_beverage_standard_rate.nil?
    self.cc_internet_direct_cost = 0 if self.cc_internet_direct_cost.nil?
    self.cc_internet_discount_1 = 0 if self.cc_internet_discount_1.nil?
    self.cc_internet_discount_2 = 0 if self.cc_internet_discount_2.nil?
    self.cc_internet_gross_revenue = 0 if self.cc_internet_gross_revenue.nil?
    self.cc_internet_net_revenue = 0 if self.cc_internet_net_revenue.nil?
    self.cc_internet_standard_rate = 0 if self.cc_internet_standard_rate.nil?
    self.cc_labor_reimbursement_direct_cost = 0 if self.cc_labor_reimbursement_direct_cost.nil?
    self.cc_labor_reimbursement_discount_1 = 0 if self.cc_labor_reimbursement_discount_1.nil?
    self.cc_labor_reimbursement_discount_2 = 0 if self.cc_labor_reimbursement_discount_2.nil?
    self.cc_labor_reimbursement_gross_revenue = 0 if self.cc_labor_reimbursement_gross_revenue.nil?
    self.cc_labor_reimbursement_net_revenue = 0 if self.cc_labor_reimbursement_net_revenue.nil?
    self.cc_labor_reimbursement_standard_rate = 0 if self.cc_labor_reimbursement_standard_rate.nil?
    self.cc_other_direct_cost = 0 if self.cc_other_direct_cost.nil?
    self.cc_other_discount_1 = 0 if self.cc_other_discount_1.nil?
    self.cc_other_discount_2 = 0 if self.cc_other_discount_2.nil?
    self.cc_other_gross_revenue = 0 if self.cc_other_gross_revenue.nil?
    self.cc_other_net_revenue = 0 if self.cc_other_net_revenue.nil?
    self.cc_other_standard_rate = 0 if self.cc_other_standard_rate.nil?
    self.cc_overhead_direct_cost = 0 if self.cc_overhead_direct_cost.nil?
    self.cc_overhead_direct_cost_all_space = 0 if self.cc_overhead_direct_cost_all_space.nil?
    self.cc_overhead_direct_cost_difference = 0 if self.cc_overhead_direct_cost_difference.nil?
    self.cc_overhead_net_revenue = 0 if self.cc_overhead_net_revenue.nil?
    self.cc_space_rental_direct_cost = 0 if self.cc_space_rental_direct_cost.nil?
    self.cc_space_rental_discount_1 = 0 if self.cc_space_rental_discount_1.nil?
    self.cc_space_rental_discount_2 = 0 if self.cc_space_rental_discount_2.nil?
    self.cc_space_rental_gross_revenue = 0 if self.cc_space_rental_gross_revenue.nil?
    self.cc_space_rental_net_revenue = 0 if self.cc_space_rental_net_revenue.nil?
    self.cc_space_rental_standard_rate = 0 if self.cc_space_rental_standard_rate.nil?
    self.cc_total_direct_cost = 0 if self.cc_total_direct_cost.nil?
    self.cc_total_direct_cost_all_space = 0 if self.cc_total_direct_cost_all_space.nil?
    self.cc_total_discount_1 = 0 if self.cc_total_discount_1.nil?
    self.cc_total_discount_2 = 0 if self.cc_total_discount_2.nil?
    self.cc_total_gross_net_revenue = 0 if self.cc_total_gross_net_revenue.nil?
    self.cc_total_gross_revenue = 0 if self.cc_total_gross_revenue.nil?
    self.cc_total_net_net_revenue = 0 if self.cc_total_net_net_revenue.nil?
    self.cc_total_net_net_revenue_all_space = 0 if self.cc_total_net_net_revenue_all_space.nil?
    self.cc_total_net_revenue = 0 if self.cc_total_net_revenue.nil?
    self.cc_total_net_revenue_all_space = 0 if self.cc_total_net_revenue_all_space.nil?
    self.cc_total_net_revenue_debt = 0 if self.cc_total_net_revenue_debt.nil?
    self.cc_total_net_revenue_debt_all_space = 0 if self.cc_total_net_revenue_debt_all_space.nil?
    self.cc_total_net_revenue_operations = 0 if self.cc_total_net_revenue_operations.nil?
    self.cc_total_net_revenue_operations_all_space = 0 if self.cc_total_net_revenue_operations_all_space.nil?
    self.cc_total_net_revenue_per_gsf = 0 if self.cc_total_net_revenue_per_gsf.nil?
    self.cc_total_net_revenue_per_gsf_all_space = 0 if self.cc_total_net_revenue_per_gsf_all_space.nil?
    self.cc_total_standard_rate = 0 if self.cc_total_standard_rate.nil?
    self.cc_utilities_direct_cost = 0 if self.cc_utilities_direct_cost.nil?
    self.cc_utilities_discount_1 = 0 if self.cc_utilities_discount_1.nil?
    self.cc_utilities_discount_2 = 0 if self.cc_utilities_discount_2.nil?
    self.cc_utilities_gross_revenue = 0 if self.cc_utilities_gross_revenue.nil?
    self.cc_utilities_net_revenue = 0 if self.cc_utilities_net_revenue.nil?
    self.cc_utilities_standard_rate = 0 if self.cc_utilities_standard_rate.nil?
    self.economic_attendance = 0 if self.economic_attendance.nil?
    self.impact_convention_operations_direct_total = 0 if self.impact_convention_operations_direct_total.nil?
    self.impact_convention_operations_indirect_total = 0 if self.impact_convention_operations_indirect_total.nil?
    self.impact_convention_operations_induced_total = 0 if self.impact_convention_operations_induced_total.nil?
    self.impact_convention_operations_jobs_total = 0 if self.impact_convention_operations_jobs_total.nil?
    self.meeting_date_id = 0 if self.meeting_date_id.nil?
    self.net_income = 0 if self.net_income.nil?
    self.net_spending_air_traffic = 0 if self.net_spending_air_traffic.nil?
    self.net_spending_entertainment = 0 if self.net_spending_entertainment.nil?
    self.net_spending_food = 0 if self.net_spending_food.nil?
    self.net_spending_ground_transportation = 0 if self.net_spending_ground_transportation.nil?
    self.net_spending_other = 0 if self.net_spending_other.nil?
    self.net_spending_room = 0 if self.net_spending_room.nil?
    self.net_spending_shopping = 0 if self.net_spending_shopping.nil?
    self.percent_local_attendees = 0 if self.percent_local_attendees.nil?
    self.spending_air_traffic = 0 if self.spending_air_traffic.nil?
    self.spending_air_traffic_lever = 0 if self.spending_air_traffic_lever.nil?
    self.spending_entertainment = 0 if self.spending_entertainment.nil?
    self.spending_entertainment_lever = 0 if self.spending_entertainment_lever.nil?
    self.spending_food = 0 if self.spending_food.nil?
    self.spending_food_lever = 0 if self.spending_food_lever.nil?
    self.spending_ground_transportation = 0 if self.spending_ground_transportation.nil?
    self.spending_ground_transportation_lever = 0 if self.spending_ground_transportation_lever.nil?
    self.spending_other = 0 if self.spending_other.nil?
    self.spending_room = 0 if self.spending_room.nil?
    self.spending_room_lever = 0 if self.spending_room_lever.nil?
    self.spending_shopping = 0 if self.spending_shopping.nil?
    self.spending_shopping_lever = 0 if self.spending_shopping_lever.nil?
    self.tax_10_entity_1 = 0 if self.tax_10_entity_1.nil?
    self.tax_10_entity_1_debt = 0 if self.tax_10_entity_1_debt.nil?
    self.tax_10_entity_1_operations = 0 if self.tax_10_entity_1_operations.nil?
    self.tax_10_entity_2 = 0 if self.tax_10_entity_2.nil?
    self.tax_10_federal = 0 if self.tax_10_federal.nil?
    self.tax_10_local = 0 if self.tax_10_local.nil?
    self.tax_10_local_all = 0 if self.tax_10_local_all.nil?
    self.tax_10_spending = 0 if self.tax_10_spending.nil?
    self.tax_10_state = 0 if self.tax_10_state.nil?
    self.tax_10_total = 0 if self.tax_10_total.nil?
    self.tax_11_entity_1 = 0 if self.tax_11_entity_1.nil?
    self.tax_11_entity_1_debt = 0 if self.tax_11_entity_1_debt.nil?
    self.tax_11_entity_1_operations = 0 if self.tax_11_entity_1_operations.nil?
    self.tax_11_entity_2 = 0 if self.tax_11_entity_2.nil?
    self.tax_11_federal = 0 if self.tax_11_federal.nil?
    self.tax_11_local = 0 if self.tax_11_local.nil?
    self.tax_11_local_all = 0 if self.tax_11_local_all.nil?
    self.tax_11_spending = 0 if self.tax_11_spending.nil?
    self.tax_11_state = 0 if self.tax_11_state.nil?
    self.tax_11_total = 0 if self.tax_11_total.nil?
    self.tax_12_entity_1 = 0 if self.tax_12_entity_1.nil?
    self.tax_12_entity_1_debt = 0 if self.tax_12_entity_1_debt.nil?
    self.tax_12_entity_1_operations = 0 if self.tax_12_entity_1_operations.nil?
    self.tax_12_entity_2 = 0 if self.tax_12_entity_2.nil?
    self.tax_12_federal = 0 if self.tax_12_federal.nil?
    self.tax_12_local = 0 if self.tax_12_local.nil?
    self.tax_12_local_all = 0 if self.tax_12_local_all.nil?
    self.tax_12_spending = 0 if self.tax_12_spending.nil?
    self.tax_12_state = 0 if self.tax_12_state.nil?
    self.tax_12_total = 0 if self.tax_12_total.nil?
    self.tax_13_entity_1 = 0 if self.tax_13_entity_1.nil?
    self.tax_13_entity_1_debt = 0 if self.tax_13_entity_1_debt.nil?
    self.tax_13_entity_1_operations = 0 if self.tax_13_entity_1_operations.nil?
    self.tax_13_entity_2 = 0 if self.tax_13_entity_2.nil?
    self.tax_13_federal = 0 if self.tax_13_federal.nil?
    self.tax_13_local = 0 if self.tax_13_local.nil?
    self.tax_13_local_all = 0 if self.tax_13_local_all.nil?
    self.tax_13_spending = 0 if self.tax_13_spending.nil?
    self.tax_13_state = 0 if self.tax_13_state.nil?
    self.tax_13_total = 0 if self.tax_13_total.nil?
    self.tax_14_entity_1 = 0 if self.tax_14_entity_1.nil?
    self.tax_14_entity_1_debt = 0 if self.tax_14_entity_1_debt.nil?
    self.tax_14_entity_1_operations = 0 if self.tax_14_entity_1_operations.nil?
    self.tax_14_entity_2 = 0 if self.tax_14_entity_2.nil?
    self.tax_14_federal = 0 if self.tax_14_federal.nil?
    self.tax_14_local = 0 if self.tax_14_local.nil?
    self.tax_14_local_all = 0 if self.tax_14_local_all.nil?
    self.tax_14_spending = 0 if self.tax_14_spending.nil?
    self.tax_14_state = 0 if self.tax_14_state.nil?
    self.tax_14_total = 0 if self.tax_14_total.nil?
    self.tax_15_entity_1 = 0 if self.tax_15_entity_1.nil?
    self.tax_15_entity_1_debt = 0 if self.tax_15_entity_1_debt.nil?
    self.tax_15_entity_1_operations = 0 if self.tax_15_entity_1_operations.nil?
    self.tax_15_entity_2 = 0 if self.tax_15_entity_2.nil?
    self.tax_15_federal = 0 if self.tax_15_federal.nil?
    self.tax_15_local = 0 if self.tax_15_local.nil?
    self.tax_15_local_all = 0 if self.tax_15_local_all.nil?
    self.tax_15_spending = 0 if self.tax_15_spending.nil?
    self.tax_15_state = 0 if self.tax_15_state.nil?
    self.tax_15_total = 0 if self.tax_15_total.nil?
    self.tax_16_entity_1 = 0 if self.tax_16_entity_1.nil?
    self.tax_16_entity_1_debt = 0 if self.tax_16_entity_1_debt.nil?
    self.tax_16_entity_1_operations = 0 if self.tax_16_entity_1_operations.nil?
    self.tax_16_entity_2 = 0 if self.tax_16_entity_2.nil?
    self.tax_16_federal = 0 if self.tax_16_federal.nil?
    self.tax_16_local = 0 if self.tax_16_local.nil?
    self.tax_16_local_all = 0 if self.tax_16_local_all.nil?
    self.tax_16_spending = 0 if self.tax_16_spending.nil?
    self.tax_16_state = 0 if self.tax_16_state.nil?
    self.tax_16_total = 0 if self.tax_16_total.nil?
    self.tax_1_entity_1 = 0 if self.tax_1_entity_1.nil?
    self.tax_1_entity_1_debt = 0 if self.tax_1_entity_1_debt.nil?
    self.tax_1_entity_1_operations = 0 if self.tax_1_entity_1_operations.nil?
    self.tax_1_entity_2 = 0 if self.tax_1_entity_2.nil?
    self.tax_1_federal = 0 if self.tax_1_federal.nil?
    self.tax_1_local = 0 if self.tax_1_local.nil?
    self.tax_1_local_all = 0 if self.tax_1_local_all.nil?
    self.tax_1_spending = 0 if self.tax_1_spending.nil?
    self.tax_1_state = 0 if self.tax_1_state.nil?
    self.tax_1_total = 0 if self.tax_1_total.nil?
    self.tax_2_entity_1 = 0 if self.tax_2_entity_1.nil?
    self.tax_2_entity_1_debt = 0 if self.tax_2_entity_1_debt.nil?
    self.tax_2_entity_1_operations = 0 if self.tax_2_entity_1_operations.nil?
    self.tax_2_entity_2 = 0 if self.tax_2_entity_2.nil?
    self.tax_2_federal = 0 if self.tax_2_federal.nil?
    self.tax_2_local = 0 if self.tax_2_local.nil?
    self.tax_2_local_all = 0 if self.tax_2_local_all.nil?
    self.tax_2_spending = 0 if self.tax_2_spending.nil?
    self.tax_2_state = 0 if self.tax_2_state.nil?
    self.tax_2_total = 0 if self.tax_2_total.nil?
    self.tax_3_entity_1 = 0 if self.tax_3_entity_1.nil?
    self.tax_3_entity_1_debt = 0 if self.tax_3_entity_1_debt.nil?
    self.tax_3_entity_1_operations = 0 if self.tax_3_entity_1_operations.nil?
    self.tax_3_entity_2 = 0 if self.tax_3_entity_2.nil?
    self.tax_3_federal = 0 if self.tax_3_federal.nil?
    self.tax_3_local = 0 if self.tax_3_local.nil?
    self.tax_3_local_all = 0 if self.tax_3_local_all.nil?
    self.tax_3_spending = 0 if self.tax_3_spending.nil?
    self.tax_3_state = 0 if self.tax_3_state.nil?
    self.tax_3_total = 0 if self.tax_3_total.nil?
    self.tax_4_entity_1 = 0 if self.tax_4_entity_1.nil?
    self.tax_4_entity_1_debt = 0 if self.tax_4_entity_1_debt.nil?
    self.tax_4_entity_1_operations = 0 if self.tax_4_entity_1_operations.nil?
    self.tax_4_entity_2 = 0 if self.tax_4_entity_2.nil?
    self.tax_4_federal = 0 if self.tax_4_federal.nil?
    self.tax_4_local = 0 if self.tax_4_local.nil?
    self.tax_4_local_all = 0 if self.tax_4_local_all.nil?
    self.tax_4_spending = 0 if self.tax_4_spending.nil?
    self.tax_4_state = 0 if self.tax_4_state.nil?
    self.tax_4_total = 0 if self.tax_4_total.nil?
    self.tax_5_entity_1 = 0 if self.tax_5_entity_1.nil?
    self.tax_5_entity_1_debt = 0 if self.tax_5_entity_1_debt.nil?
    self.tax_5_entity_1_operations = 0 if self.tax_5_entity_1_operations.nil?
    self.tax_5_entity_2 = 0 if self.tax_5_entity_2.nil?
    self.tax_5_federal = 0 if self.tax_5_federal.nil?
    self.tax_5_local = 0 if self.tax_5_local.nil?
    self.tax_5_local_all = 0 if self.tax_5_local_all.nil?
    self.tax_5_spending = 0 if self.tax_5_spending.nil?
    self.tax_5_state = 0 if self.tax_5_state.nil?
    self.tax_5_total = 0 if self.tax_5_total.nil?
    self.tax_6_entity_1 = 0 if self.tax_6_entity_1.nil?
    self.tax_6_entity_1_debt = 0 if self.tax_6_entity_1_debt.nil?
    self.tax_6_entity_1_operations = 0 if self.tax_6_entity_1_operations.nil?
    self.tax_6_entity_2 = 0 if self.tax_6_entity_2.nil?
    self.tax_6_federal = 0 if self.tax_6_federal.nil?
    self.tax_6_local = 0 if self.tax_6_local.nil?
    self.tax_6_local_all = 0 if self.tax_6_local_all.nil?
    self.tax_6_spending = 0 if self.tax_6_spending.nil?
    self.tax_6_state = 0 if self.tax_6_state.nil?
    self.tax_6_total = 0 if self.tax_6_total.nil?
    self.tax_7_entity_1 = 0 if self.tax_7_entity_1.nil?
    self.tax_7_entity_1_debt = 0 if self.tax_7_entity_1_debt.nil?
    self.tax_7_entity_1_operations = 0 if self.tax_7_entity_1_operations.nil?
    self.tax_7_entity_2 = 0 if self.tax_7_entity_2.nil?
    self.tax_7_federal = 0 if self.tax_7_federal.nil?
    self.tax_7_local = 0 if self.tax_7_local.nil?
    self.tax_7_local_all = 0 if self.tax_7_local_all.nil?
    self.tax_7_spending = 0 if self.tax_7_spending.nil?
    self.tax_7_state = 0 if self.tax_7_state.nil?
    self.tax_7_total = 0 if self.tax_7_total.nil?
    self.tax_8_entity_1 = 0 if self.tax_8_entity_1.nil?
    self.tax_8_entity_1_debt = 0 if self.tax_8_entity_1_debt.nil?
    self.tax_8_entity_1_operations = 0 if self.tax_8_entity_1_operations.nil?
    self.tax_8_entity_2 = 0 if self.tax_8_entity_2.nil?
    self.tax_8_federal = 0 if self.tax_8_federal.nil?
    self.tax_8_local = 0 if self.tax_8_local.nil?
    self.tax_8_local_all = 0 if self.tax_8_local_all.nil?
    self.tax_8_spending = 0 if self.tax_8_spending.nil?
    self.tax_8_state = 0 if self.tax_8_state.nil?
    self.tax_8_total = 0 if self.tax_8_total.nil?
    self.tax_9_entity_1 = 0 if self.tax_9_entity_1.nil?
    self.tax_9_entity_1_debt = 0 if self.tax_9_entity_1_debt.nil?
    self.tax_9_entity_1_operations = 0 if self.tax_9_entity_1_operations.nil?
    self.tax_9_entity_2 = 0 if self.tax_9_entity_2.nil?
    self.tax_9_federal = 0 if self.tax_9_federal.nil?
    self.tax_9_local = 0 if self.tax_9_local.nil?
    self.tax_9_local_all = 0 if self.tax_9_local_all.nil?
    self.tax_9_spending = 0 if self.tax_9_spending.nil?
    self.tax_9_state = 0 if self.tax_9_state.nil?
    self.tax_9_total = 0 if self.tax_9_total.nil?
    self.total_event_spending = 0 if self.total_event_spending.nil?
    self.total_impact = 0 if self.total_impact.nil?
    self.total_impact_direct = 0 if self.total_impact_direct.nil?
    self.total_impact_direct_jobs = 0 if self.total_impact_direct_jobs.nil?
    self.total_impact_direct_va = 0 if self.total_impact_direct_va.nil?
    self.total_impact_direct_wages = 0 if self.total_impact_direct_wages.nil?
    self.total_impact_indirect = 0 if self.total_impact_indirect.nil?
    self.total_impact_indirect_jobs = 0 if self.total_impact_indirect_jobs.nil?
    self.total_impact_indirect_va = 0 if self.total_impact_indirect_va.nil?
    self.total_impact_indirect_wages = 0 if self.total_impact_indirect_wages.nil?
    self.total_impact_induced = 0 if self.total_impact_induced.nil?
    self.total_impact_induced_jobs = 0 if self.total_impact_induced_jobs.nil?
    self.total_impact_induced_va = 0 if self.total_impact_induced_va.nil?
    self.total_impact_induced_wages = 0 if self.total_impact_induced_wages.nil?
    self.total_impact_with_induced = 0 if self.total_impact_with_induced.nil?
    self.total_net_spending = 0 if self.total_net_spending.nil?
    self.total_spending = 0 if self.total_spending.nil?
    self.total_tax = 0 if self.total_tax.nil?
    self.total_tax_entity_1 = 0 if self.total_tax_entity_1.nil?
    self.total_tax_entity_1_debt = 0 if self.total_tax_entity_1_debt.nil?
    self.total_tax_entity_1_operations = 0 if self.total_tax_entity_1_operations.nil?
    self.total_tax_entity_2 = 0 if self.total_tax_entity_2.nil?
    self.total_tax_federal = 0 if self.total_tax_federal.nil?
    self.total_tax_local = 0 if self.total_tax_local.nil?
    self.total_tax_local_all = 0 if self.total_tax_local_all.nil?
    self.total_tax_state = 0 if self.total_tax_state.nil?
    self.total_tax_to_cib = 0 if self.total_tax_to_cib.nil?
    self.total_tax_to_cib_debt = 0 if self.total_tax_to_cib_debt.nil?
    self.total_tax_to_cib_operations = 0 if self.total_tax_to_cib_operations.nil?

    self.total_tax_entity_1 = total_taxes('entity_1')
    self.total_tax_entity_1_debt = total_taxes('entity_1_debt')
    self.total_tax_entity_1_operations = total_taxes('entity_1_operations')
    self.total_tax_entity_2 = total_taxes('entity_2')
    self.total_tax_local = total_taxes('local')
    self.total_tax_local_all = total_taxes('local_all')
    self.total_tax_state = total_taxes('state')
    self.total_tax_federal = total_taxes('federal')

    self.total_tax = 0.0
    self.total_tax += self.total_tax_entity_1_debt
    self.total_tax += self.total_tax_entity_1_operations
    self.total_tax += self.total_tax_entity_2
    self.total_tax += self.total_tax_local
    self.total_tax += self.total_tax_state
    self.total_tax += self.total_tax_federal

    round
  end

  def self.treat_as_percentage?(property_name)
    return true if property_name == 'percent_local_attendees'
    false
  end

  def total_taxes(property_name_suffix)
    total = 0
    (1..16).each { |index| total += self.send("tax_#{index}_#{property_name_suffix}") }
    total
  end

  def total_impact_with_induced_va
    self.total_impact_direct_va + self.total_impact_indirect_va + self.total_impact_induced_va
  end

  def total_impact_with_induced_wages
    self.total_impact_direct_wages + self.total_impact_indirect_wages + self.total_impact_induced_wages
  end

  def total_impact_with_induced_jobs
    self.total_impact_direct_jobs + self.total_impact_indirect_jobs + self.total_impact_induced_jobs
  end

  def round
   self.cc_space_rental_standard_rate = self.cc_space_rental_standard_rate.round(2)
   self.cc_food_and_beverage_standard_rate = self.cc_food_and_beverage_standard_rate.round(2)
   self.cc_labor_reimbursement_standard_rate = self.cc_labor_reimbursement_standard_rate.round(2)
   self.cc_utilities_standard_rate = self.cc_utilities_standard_rate.round(2)
   self.cc_internet_standard_rate = self.cc_internet_standard_rate.round(2)
   self.cc_equipment_standard_rate = self.cc_equipment_standard_rate.round(2)
   self.cc_other_standard_rate = self.cc_other_standard_rate.round(2)

   self.cc_space_rental_discount_1 = self.cc_space_rental_discount_1.round(2)
   self.cc_food_and_beverage_discount_1 = self.cc_food_and_beverage_discount_1.round(2)
   self.cc_labor_reimbursement_discount_1 = self.cc_labor_reimbursement_discount_1.round(2)
   self.cc_utilities_discount_1 = self.cc_utilities_discount_1.round(2)
   self.cc_internet_discount_1 = self.cc_internet_discount_1.round(2)
   self.cc_equipment_discount_1 = self.cc_equipment_discount_1.round(2)
   self.cc_other_discount_1 = self.cc_other_discount_1.round(2)

   self.cc_space_rental_discount_2 = self.cc_space_rental_discount_2.round(2)
   self.cc_food_and_beverage_discount_2 = self.cc_food_and_beverage_discount_2.round(2)
   self.cc_labor_reimbursement_discount_2 = self.cc_labor_reimbursement_discount_2.round(2)
   self.cc_utilities_discount_2 = self.cc_utilities_discount_2.round(2)
   self.cc_internet_discount_2 = self.cc_internet_discount_2.round(2)
   self.cc_equipment_discount_2 = self.cc_equipment_discount_2.round(2)
   self.cc_other_discount_2 = self.cc_other_discount_2.round(2)

   self.cc_total_direct_cost = self.cc_total_direct_cost.round(2)
   self.cc_total_discount_1 = self.cc_total_discount_1.round(2)
   self.cc_total_discount_2 = self.cc_total_discount_2.round(2)

   self.cc_total_net_revenue_per_gsf = self.cc_total_net_revenue_per_gsf.round(4)
   self.cc_total_net_revenue_per_gsf_all_space = self.cc_total_net_revenue_per_gsf_all_space.round(4)
  end

  def lever_note_available
    return true unless self.spending_air_traffic_lever_note.blank?
    return true unless self.spending_entertainment_lever_note.blank?
    return true unless self.spending_food_lever_note.blank?
    return true unless self.spending_room_lever_note.blank?
    return true unless self.spending_shopping_lever_note.blank?
    return true unless self.spending_ground_transportation_lever_note.blank?
    false
  end

  def economic_attendance_for_calculations
    return self.economic_attendance unless self.economic_attendance.to_i == 0
    self.meeting_date.attendance.to_i
  end
end
