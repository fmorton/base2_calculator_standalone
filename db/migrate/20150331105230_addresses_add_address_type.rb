class AddressesAddAddressType < ActiveRecord::Migration
  def change
    add_column :addresses, :address_type, :string, :limit => 16
  end
end
