class CreateNoteLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :note_logs do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "note_id", :default => 0, :null => false
      t.integer  "note_type_id", :default => 0, :null => false
      t.date     "followup_needed_at"
      t.date     "followup_completed_at"
      t.integer  "followup_by_id", :default => 0, :null => false
      t.string   "data_source_id", :limit => 32
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "note_logs", ["data_source_id"]
    add_index "note_logs", ["note_id"]
  end
end
