class GenerallyAddAdTypeLabel < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :ad_type_id, :integer, :default => 0, :null => false
    add_column :events, :ad_type_id, :integer, :default => 0, :null => false
    add_column :organizations, :ad_type_id, :integer, :default => 0, :null => false
  end
end
