class CreateFacebookUsers < ActiveRecord::Migration
  def change
    create_table :facebook_users do |t|
      t.integer  "facebook_id"
      t.string   "session_key"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "facebook_users", ["facebook_id"], :name => "index_facebook_users_on_facebook_id", :unique => true
  end
end