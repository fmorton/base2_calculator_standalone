class CreateGetawayResponses < ActiveRecord::Migration
  def change
    create_table :getaway_responses do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "getaway_id", :limit => 64
      t.string   "first_name", :limit => 64
      t.string   "last_name", :limit => 64
      t.string   "email", :limit => 64
      t.string   "zip", :limit => 16
      t.text     "answer"
      t.boolean  "signup_for_win_in_indy", :default => false, :null => false
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end
end