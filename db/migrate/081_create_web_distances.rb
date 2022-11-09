class CreateWebDistances < ActiveRecord::Migration
  def change
    create_table :web_distances do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "object_1_id", :default => 0, :null => false
      t.string   "object_1_type", :limit => 32, :null => false
      t.integer  "object_2_id", :default => 0, :null => false
      t.string   "object_2_type", :limit => 32, :null => false
      t.decimal  "distance", :precision => 12, :scale => 2, :null => false
      t.string   "object_1_view_type", :limit => 32
      t.string   "object_2_view_type", :limit => 32
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "web_distances", ["context_organization_id", "object_1_id", "object_2_id"], :name => "index_web_distances_multi_1"
  end
end