class CreateViewMaps < ActiveRecord::Migration
  def change
    create_table :view_maps do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "person_id", :default => 0, :null => false
      t.integer  "tagmap_id", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.timestamps
    end
  add_index :view_maps, :person_id
  end
end
