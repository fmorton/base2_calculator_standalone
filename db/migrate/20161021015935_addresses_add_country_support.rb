class AddressesAddCountrySupport < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :country, :text
  end
end
