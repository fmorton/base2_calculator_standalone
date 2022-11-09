class ReportsAddCustomReportName < ActiveRecord::Migration
  def change
    add_column :reports, :custom_report_name, :text
  end
end
