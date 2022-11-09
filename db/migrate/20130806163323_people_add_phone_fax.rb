class PeopleAddPhoneFax < ActiveRecord::Migration
  def up
    add_column :people, :phone_fax, :string, :limit => 32, :after => :phone_work
  end

  def down
  end
end
