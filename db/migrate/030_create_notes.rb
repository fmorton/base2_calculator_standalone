class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "note_type_id", :default => 0, :null => false
      t.integer  "organization_id", :default => 0, :null => false
      t.integer  "person_id", :default => 0, :null => false
      t.integer  "product_id", :default => 0, :null => false
      t.integer  "meeting_id", :default => 0, :null => false
      t.integer  "sales_lead_id", :default => 0, :null => false
      t.text     "content"
      t.date     "note_at"
      t.date     "followup_needed_at"
      t.date     "followup_completed_at"
      t.integer  "followup_by_id", :default => 0, :null => false
      t.text     "followup_content"
      t.integer  "data_source_id", :default => 0, :null => false
      t.text     "email_to"
      t.text     "email_cc"
      t.text     "email_bcc"
      t.text     "email_from"
      t.text     "email_subject"
      t.date     "activity_at"
      t.boolean  "hotel_viewable", :default => false, :null => false
      t.boolean  "planner_viewable", :default => false, :null => false
      t.boolean  "flagged", :default => false, :null => false
      t.text     "html"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "notes", ["data_source_id"], :name => "index_notes_on_data_source_id"
    add_index "notes", ["followup_by_id"], :name => "index_notes_on_followup_by_id"
    add_index "notes", ["followup_needed_at"], :name => "index_notes_on_followup_needed_at"
    add_index "notes", ["meeting_id"], :name => "index_notes_on_meeting_id"
    add_index "notes", ["note_type_id"], :name => "index_notes_on_note_type_id"
    add_index "notes", ["organization_id"], :name => "index_notes_on_organization_id"
    add_index "notes", ["person_id"], :name => "index_notes_on_person_id"
    add_index "notes", ["product_id"], :name => "index_notes_on_product_id"
    add_index "notes", ["sales_lead_id"], :name => "index_notes_on_sales_lead_id"
  end
end