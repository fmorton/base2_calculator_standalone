class ReportPropertiesAddConstant < ActiveRecord::Migration
  def up
    add_column :report_properties, :constant, :boolean, :default => false, :after => :hidden
  end

  def down
  end
end
