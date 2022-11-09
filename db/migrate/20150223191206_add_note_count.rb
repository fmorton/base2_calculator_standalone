class AddNoteCount < ActiveRecord::Migration
  def change
    add_column :notes, :count_value, :integer, :default => 0, :null => false
  end
end
