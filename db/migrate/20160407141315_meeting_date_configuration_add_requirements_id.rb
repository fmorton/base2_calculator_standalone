class MeetingDateConfigurationAddRequirementsId < ActiveRecord::Migration
  def change
    add_column :meeting_date_configurations, :requirements_id, :integer, :default => 0, :null => false
  end
end
