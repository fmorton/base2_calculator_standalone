class PeopleUsePasswordHashSalt < ActiveRecord::Migration
  def up
    add_column :people, :password_hash, :string, :limit => 128
    add_column :people, :password_salt, :string, :limit => 128
  end

  def down
  end
end
