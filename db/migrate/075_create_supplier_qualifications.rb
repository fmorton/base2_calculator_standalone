class CreateSupplierQualifications < ActiveRecord::Migration
  def change
    create_table :supplier_qualifications do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "organization_id", :default => 0, :null => false
      t.datetime "qualified_at"
      t.integer  "qualified_by", :default => 0, :null => false
      t.integer  "qualified_by_author_id", :default => 0, :null => false
      t.string   "data_source_id", :limit => 32
      t.integer  "data_source_status", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end