class AddReportAudienceIdSupport < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :report_audience_id, :integer, :default => 0, :null => false
  end
end
