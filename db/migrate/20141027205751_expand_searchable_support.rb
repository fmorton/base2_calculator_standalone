class ExpandSearchableSupport < ActiveRecord::Migration
  def up
    change_column :contents, :searchable, :boolean, :default => true, :null => false
    add_column :events, :searchable, :boolean, :default => true, :null => false
    add_column :organizations, :searchable, :boolean, :default => true, :null => false
  end

  def down
  end
end
