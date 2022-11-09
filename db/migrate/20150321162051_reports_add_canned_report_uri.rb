class ReportsAddCannedReportUri < ActiveRecord::Migration
  def change
    add_column :reports, :canned_report_uri, :text
  end
end
