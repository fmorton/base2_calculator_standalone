class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.text     "label"
      t.text     "email"
      t.text     "name"
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "votes", ["label"]
    add_index "votes", ["email"]
  end
end
