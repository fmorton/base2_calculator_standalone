class NotesIndexForReports < ActiveRecord::Migration[5.0]
  def change
    add_index "notes", ["note_type_id", "created_by", "created_at"], :name => "index_notes_for_reports_1"
  end
end
