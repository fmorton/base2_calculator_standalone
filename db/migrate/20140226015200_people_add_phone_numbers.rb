class PeopleAddPhoneNumbers < ActiveRecord::Migration
  def up
    add_column :people, :phone_direct, :string, :limit => 32
    add_column :people, :phone_toll_free, :string, :limit => 32
    add_column :people, :phone_tdd, :string, :limit => 32
  end

  def down
  end
end
