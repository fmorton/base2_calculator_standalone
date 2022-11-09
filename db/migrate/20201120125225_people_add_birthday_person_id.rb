class PeopleAddBirthdayPersonId < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :birthday_person_id, :integer, :default => 0, :null => false
  end
end
