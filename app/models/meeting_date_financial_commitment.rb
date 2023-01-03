#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
class MeetingDateFinancialCommitment < ActiveRecord::Base
  include Base2ActiveRecord
  include Base2ContextModel
  include Base2ChangeLogModel
  include Base2ArchiveModel

  belongs_to :context_organization, :optional => true
  belongs_to :meeting_date, :optional => true

  def context_before_validation_application_extra
    self.expense_cash = 0.0 if self.expense_cash.nil?
    self.expense_other = 0.0 if self.expense_other.nil?
    self.expense_other_outside = 0.0 if self.expense_other_outside.nil?
    self.expense_space = 0.0 if self.expense_space.nil?
    self.expense_sponsor_food = 0.0 if self.expense_sponsor_food.nil?
    self.expense_total = 0.0 if self.expense_total.nil?
    self.expense_total_inside = 0.0 if self.expense_total_inside.nil?
    self.expense_total_outside = 0.0 if self.expense_total_outside.nil?
    self.expense_transportation = 0.0 if self.expense_transportation.nil?
    self.financial_commitment_forecast = 0.0 if self.financial_commitment_forecast.nil?
    self.income_assessment = 0.0 if self.income_assessment.nil?
    self.income_assessment_forecast = 0.0 if self.income_assessment_forecast.nil?
    self.income_commission_forecast = 0.0 if self.income_commission_forecast.nil?
    self.income_other = 0.0 if self.income_other.nil?
    self.income_other_forecast = 0.0 if self.income_other_forecast.nil?
    self.income_other_outside = 0.0 if self.income_other_outside.nil?
    self.income_other_outside_forecast = 0.0 if self.income_other_outside_forecast.nil?
    self.income_other_outside_percent_forecast = 0.0 if self.income_other_outside_percent_forecast.nil?
    self.income_other_percent = 0.0 if self.income_other_percent.nil?
    self.income_other_percent_forecast = 0.0 if self.income_other_percent_forecast.nil?
    self.income_rebate = 0.0 if self.income_rebate.nil?
    self.income_rebate_forecast = 0.0 if self.income_rebate_forecast.nil?
    self.income_total_forecast = 0.0 if self.income_total_forecast.nil?
    self.income_total_inside_discounted = 0.0 if self.income_total_inside_discounted.nil?
    self.income_total_inside_forecast = 0.0 if self.income_total_inside_forecast.nil?
    self.income_total_outside_forecast = 0.0 if self.income_total_outside_forecast.nil?
  end

  #NOTE: 2018.07.31...income_other_outside_percent converted to a text field and
  #NOTE: 2018.07.31...no longer included in the forecast calculation
  def income_other_outside_percent_for_calculation
    BigDecimal("0.0")
  end

  #NOTE: 2020.07.30...convert income_commission to string but allow calculations still from first number
  def extracted_income_commission
    return BigDecimal("0.0") if income_commission.blank?

    income_commission.gsub(',', '').gsub('%', '').gsub('-', '').split.each do |s|
      value = (BigDecimal(s) / BigDecimal("100.0")) rescue BigDecimal("0.0")

      return value if value > BigDecimal("0.0")
    end

    BigDecimal("0.0")
  end

  def available?
    return true if income_assessment > 0.0
    return true if income_rebate > 0.0
    return true if income_commission.not_blank_or_zero?
    return true if income_other > 0.0
    return true if income_other_percent > 0.0
    return true if income_other_outside > 0.0
    return true if income_other_outside_percent.not_blank_or_zero?
    false
  end

  def blank?
    return false if financial_commitment_forecast > 0.0
    return false if financial_commitment_note.not_blank?
    return false if income_total_forecast > 0.0
    return false if income_total_inside_forecast > 0.0
    return false if income_total_inside_discounted > 0.0
    return false if income_total_outside_forecast > 0.0
    return false if income_assessment > 0.0
    return false if income_assessment_forecast > 0.0
    return false if income_assessment_description.not_blank?
    return false if income_rebate > 0.0
    return false if income_rebate_forecast > 0.0
    return false if income_rebate_description.not_blank?
    return false if income_commission.not_blank_or_zero?
    return false if income_commission_forecast > 0.0
    return false if income_commission_description.not_blank?
    return false if income_other > 0.0
    return false if income_other_forecast > 0.0
    return false if income_other_description.not_blank?
    return false if income_other_percent > 0.0
    return false if income_other_percent_forecast > 0.0
    return false if income_other_percent_description.not_blank?
    return false if income_other_outside > 0.0
    return false if income_other_outside_forecast > 0.0
    return false if income_other_outside_description.not_blank?
    return false if income_other_outside_percent.not_blank_or_zero?
    return false if income_other_outside_percent_forecast > 0.0
    return false if income_other_outside_percent_description.not_blank?
    return false if expense_total > 0.0
    return false if expense_total_inside > 0.0
    return false if expense_total_outside > 0.0
    return false if expense_total_description.not_blank?
    return false if expense_space > 0.0
    return false if expense_space_description.not_blank?
    return false if expense_transportation > 0.0
    return false if expense_transportation_description.not_blank?
    return false if expense_sponsor_food > 0.0
    return false if expense_sponsor_food_description.not_blank?
    return false if expense_cash > 0.0
    return false if expense_cash_description.not_blank?
    return false if expense_other > 0.0
    return false if expense_other_description.not_blank?
    return false if expense_other_outside > 0.0
    return false if expense_other_outside_description.not_blank?
    true
  end
end
