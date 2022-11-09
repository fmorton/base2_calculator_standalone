class CreateFacebookRegistrations < ActiveRecord::Migration
  def change
    create_table :facebook_registrations do |t|
      t.text     "email"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end