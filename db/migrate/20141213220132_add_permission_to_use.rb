class AddPermissionToUse < ActiveRecord::Migration
  def change
    add_column :contents, :permission_to_use, :boolean, :default => true, :null => false
    add_column :events, :permission_to_use, :boolean, :default => true, :null => false
  end
end
