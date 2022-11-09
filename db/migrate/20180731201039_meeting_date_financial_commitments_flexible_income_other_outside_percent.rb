class MeetingDateFinancialCommitmentsFlexibleIncomeOtherOutsidePercent < ActiveRecord::Migration[5.2]
  def change
    change_column :meeting_date_financial_commitments, :income_other_outside_percent, :text
    change_column :extended_meeting_dates, :financial_commitment_income_other_outside_percent, :text

    execute "update meeting_date_financial_commitments set income_other_outside_percent='' where income_other_outside_percent='0.00';"
    execute "update meeting_date_financial_commitments set income_other_outside_percent='3%' where income_other_outside_percent='0.03';"
    execute "update meeting_date_financial_commitments set income_other_outside_percent='5%' where income_other_outside_percent='0.05';"
    execute "update meeting_date_financial_commitments set income_other_outside_percent='6%' where income_other_outside_percent='0.06';"
    execute "update meeting_date_financial_commitments set income_other_outside_percent='7%' where income_other_outside_percent='0.07';"
    execute "update meeting_date_financial_commitments set income_other_outside_percent='8%' where income_other_outside_percent='0.08';"
    execute "update meeting_date_financial_commitments set income_other_outside_percent='10%' where income_other_outside_percent='0.10';"
    execute "update meeting_date_financial_commitments set income_other_outside_percent='11%' where income_other_outside_percent='0.11';"
    execute "update meeting_date_financial_commitments set income_other_outside_percent='12%' where income_other_outside_percent='0.12';"
    execute "update meeting_date_financial_commitments set income_other_outside_percent='15%' where income_other_outside_percent='0.15';"
    execute "update meeting_date_financial_commitments set income_other_outside_percent='20%' where income_other_outside_percent='0.20';"

    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='' where financial_commitment_income_other_outside_percent='0.00';"
    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='3%' where financial_commitment_income_other_outside_percent='0.03';"
    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='5%' where financial_commitment_income_other_outside_percent='0.05';"
    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='6%' where financial_commitment_income_other_outside_percent='0.06';"
    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='7%' where financial_commitment_income_other_outside_percent='0.07';"
    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='8%' where financial_commitment_income_other_outside_percent='0.08';"
    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='10%' where financial_commitment_income_other_outside_percent='0.10';"
    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='11%' where financial_commitment_income_other_outside_percent='0.11';"
    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='12%' where financial_commitment_income_other_outside_percent='0.12';"
    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='15%' where financial_commitment_income_other_outside_percent='0.15';"
    execute "update extended_meeting_dates set financial_commitment_income_other_outside_percent='20%' where financial_commitment_income_other_outside_percent='0.20';"
  end
end
