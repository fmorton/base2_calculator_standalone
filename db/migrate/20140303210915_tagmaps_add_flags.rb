class TagmapsAddFlags < ActiveRecord::Migration
  def up
    add_column :tagmaps, :flags, :text
  end

  def down
  end
end
