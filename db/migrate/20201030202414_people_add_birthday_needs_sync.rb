class PeopleAddBirthdayNeedsSync < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :birthday_needs_sync, :boolean, :null => false, :default => false
  end
end
