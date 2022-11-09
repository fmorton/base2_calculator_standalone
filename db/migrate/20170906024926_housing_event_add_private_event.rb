class HousingEventAddPrivateEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :housing_events, :private_event, :boolean, :default => false, :null => false
  end
end
