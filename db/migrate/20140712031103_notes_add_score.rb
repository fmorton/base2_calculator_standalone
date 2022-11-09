class NotesAddScore < ActiveRecord::Migration
  def up
    add_column :notes, :score, :decimal, :precision => 12, :scale => 2, :default => 0.0, :null => false
  end

  def down
  end
end
