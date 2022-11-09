class CreateSmileyFaces < ActiveRecord::Migration
  def change
    create_table :smiley_faces do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "organization_id", :default => 0, :null => false
      t.integer  "sales_lead_id", :default => 0, :null => false
      t.datetime "smiley_face_at"
      t.string   "color", :limit => 8
      t.text     "note"
      t.integer  "created_by", :default => 0
      t.integer  "updated_by", :default => 0
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end