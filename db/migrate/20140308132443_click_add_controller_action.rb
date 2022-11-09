class ClickAddControllerAction < ActiveRecord::Migration
  def up
    add_column :clicks, :controller, :text
    add_column :clicks, :action, :text
  end

  def down
  end
end
