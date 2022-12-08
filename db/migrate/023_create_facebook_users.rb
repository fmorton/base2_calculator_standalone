class CreateFacebookUsers < ActiveRecord::Migration[7.0]
  def change
    create_table "facebook_users", id: :serial, force: :cascade do |t|
      t.integer "facebook_id"
      t.string "session_key", limit: 255
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["facebook_id"], name: "index_facebook_users_on_facebook_id", unique: true
    end
  end
end