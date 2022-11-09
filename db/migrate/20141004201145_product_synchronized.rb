class ProductSynchronized < ActiveRecord::Migration
  def up
    add_column :products, :synchronized, :boolean, :default => false, :null => false
  end

  def down
  end
end
