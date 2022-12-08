class CreateFacebookRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table "facebook_registrations", id: :serial, force: :cascade do |t|
      t.text "email"
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
    end
  end
end