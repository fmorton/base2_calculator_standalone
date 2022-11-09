class PeopleAddBirthdayMonthYear < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :birthday_month, :integer, :default => 0, :null => false
    add_column :people, :birthday_day, :integer, :default => 0, :null => false
  end
end
