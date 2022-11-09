class CreateActionLogs < ActiveRecord::Migration
  def change
    create_table :action_logs do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "name", :limit => 128
      t.datetime "started_at"
      t.datetime "finished_at"
      t.boolean  "completed", :default => false, :null => false
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    add_index "action_logs", ["name"], :name => "index_action_logs_on_name"
  end
end