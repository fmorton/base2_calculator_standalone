class MeetingDateEconomicImpactsAddCcXDescription < ActiveRecord::Migration
  def change
    add_column :meeting_date_economic_impacts, :cc_equipment_description, :text
    add_column :meeting_date_economic_impacts, :cc_food_and_beverage_description, :text
    add_column :meeting_date_economic_impacts, :cc_internet_description, :text
    add_column :meeting_date_economic_impacts, :cc_labor_reimbursement_description, :text
    add_column :meeting_date_economic_impacts, :cc_other_description, :text
    add_column :meeting_date_economic_impacts, :cc_space_rental_description, :text
    add_column :meeting_date_economic_impacts, :cc_utilities_description, :text

    add_column :extended_meeting_dates, :economic_impact_cc_equipment_description, :text
    add_column :extended_meeting_dates, :economic_impact_cc_food_and_beverage_description, :text
    add_column :extended_meeting_dates, :economic_impact_cc_internet_description, :text
    add_column :extended_meeting_dates, :economic_impact_cc_labor_reimbursement_description, :text
    add_column :extended_meeting_dates, :economic_impact_cc_other_description, :text
    add_column :extended_meeting_dates, :economic_impact_cc_space_rental_description, :text
    add_column :extended_meeting_dates, :economic_impact_cc_utilities_description, :text
  end
end
