class AddMetaDisallow < ActiveRecord::Migration
  def up
    add_column :contents, :meta_disallow, :boolean, :default => false, :null => false
    add_column :events, :meta_disallow, :boolean, :default => false, :null => false
    add_column :organizations, :meta_disallow, :boolean, :default => false, :null => false
    add_column :redirects, :meta_disallow, :boolean, :default => false, :null => false
  end

  def down
  end
end
