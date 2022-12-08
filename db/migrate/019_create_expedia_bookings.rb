class CreateExpediaBookings < ActiveRecord::Migration[7.0]
  def change
    create_table "expedia_bookings", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.date "check_in_at"
      t.date "check_out_at"
      t.string "hotel_id", limit: 32
      t.string "room_type", limit: 32
      t.string "rate_code", limit: 32
      t.string "key", limit: 128
      t.string "rooms", limit: 32
      t.string "session_id", limit: 128
      t.boolean "confirmed", default: false, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
    end
  end
end