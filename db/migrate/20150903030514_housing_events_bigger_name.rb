class HousingEventsBiggerName < ActiveRecord::Migration
  def change
    change_column :housing_events, :name, :string, :limit => 128
  end
end
