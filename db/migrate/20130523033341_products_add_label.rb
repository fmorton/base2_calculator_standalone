class ProductsAddLabel < ActiveRecord::Migration
  def up
    add_column :products, :label, :string, :limit => 96
    add_index  :products, :label
  end

  def down
  end
end
