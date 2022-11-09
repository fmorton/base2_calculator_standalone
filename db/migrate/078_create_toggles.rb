class CreateToggles < ActiveRecord::Migration
  def change
    create_table :toggles do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "toggle_id", :limit => 64
      t.string   "toggle_label", :limit => 64
      t.integer  "person_id", :default => 0, :null => false
      t.boolean  "open", :default => true, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "toggles", ["toggle_id"], :name => "index_toggles_on_toggle_id"
    add_index "toggles", ["toggle_label"], :name => "index_toggles_on_toggle_label"
  end
end