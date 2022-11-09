class ReportsCannedReportSql < ActiveRecord::Migration
  def change
    add_column :reports, :canned_report_sql, :text
  end
end
