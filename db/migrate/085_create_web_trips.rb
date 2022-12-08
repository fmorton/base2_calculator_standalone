class CreateWebTrips < ActiveRecord::Migration[7.0]
  def change
    create_table "web_trips", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "person_id", default: 0, null: false
      t.string "session_id", limit: 64
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.integer "day", default: 1, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
    end
  end
end