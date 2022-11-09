class CreateWebPopularityRatings < ActiveRecord::Migration
  def change
    create_table :web_popularity_ratings do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "person_id", :default => 0, :null => false
      t.string   "ip_address", :limit => 32
      t.string   "session_id", :limit => 64
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end