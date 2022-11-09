class CreateEmailQueues < ActiveRecord::Migration
  def change
    create_table :email_queues do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "server", :limit => 64
      t.text     "subject"
      t.text     "from"
      t.text     "to"
      t.text     "cc"
      t.text     "bcc"
      t.text     "content"
      t.datetime "requested_at"
      t.datetime "started_at"
      t.datetime "finished_at"
      t.boolean  "completed", :default => false, :null => false
      t.string   "label", :limit => 32
      t.text     "mime_type"
      t.text     "error_message"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end
end