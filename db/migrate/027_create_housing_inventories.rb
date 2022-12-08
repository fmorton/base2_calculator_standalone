class CreateHousingInventories < ActiveRecord::Migration[7.0]
  def change
    create_table "housing_inventories", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "housing_event_id", default: 0, null: false
      t.string "expedia_id", limit: 32
      t.text "expedia_uri"
      t.string "room_rate_low", limit: 16
      t.string "room_rate_high", limit: 16
      t.decimal "distance_from_venue", precision: 12, scale: 2
      t.string "location_string", limit: 32
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.datetime "sync_at", precision: nil
    end
  end
end