class PeopleAddTinyPersonalInformation < ActiveRecord::Migration
  def change
    add_column :people, :tiny_personal_information, :text
  end
end
