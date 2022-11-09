class PeopleAddPrivilegeId < ActiveRecord::Migration
  def up
    add_column :people, :privilege_id, :integer, :default => 0, :null => false
  end

  def down
  end
end
