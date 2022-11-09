class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "name", :limit => 64, :null => false
      t.string   "primary_table_name", :limit => 64
      t.integer  "created_by", :default => 0
      t.integer  "updated_by", :default => 0
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end