class NotesAddAuthorId < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :author_id, :integer, :default => 0, :null => false

    add_index "notes", ["author_id"]
  end
end
