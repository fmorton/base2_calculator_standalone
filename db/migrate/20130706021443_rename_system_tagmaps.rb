class RenameSystemTagmaps < ActiveRecord::Migration
  def up
    Tagmap.connection.execute("update tagmaps set name='Tag Maps' where name='System Tag Maps'")
    Tagmap.connection.execute("update tagmaps set label='privilege_tagmaps' where label='privilege_system_tagmaps'")
  end

  def down
  end
end
