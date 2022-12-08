class CreateSalesLeadResponseRates < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_date_response_rates", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "meeting_date_response_id", default: 0, null: false
      t.integer "position", default: 100, null: false
      t.date "signature_meeting_start_at"
      t.date "signature_meeting_end_at"
      t.integer "peak_rooms", default: 0, null: false
      t.integer "hold_option", default: 0, null: false
      t.decimal "room_rate_flat", precision: 12, scale: 2, default: "0.0"
      t.decimal "room_rate_1b1p", precision: 12, scale: 2, default: "0.0"
      t.decimal "room_rate_1b2p", precision: 12, scale: 2, default: "0.0"
      t.decimal "room_rate_2b2p", precision: 12, scale: 2, default: "0.0"
      t.decimal "room_rate_2b3p", precision: 12, scale: 2, default: "0.0"
      t.decimal "room_rate_2b4p", precision: 12, scale: 2, default: "0.0"
      t.decimal "room_rate_suite1b", precision: 12, scale: 2, default: "0.0"
      t.decimal "room_rate_suite2b", precision: 12, scale: 2, default: "0.0"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["meeting_date_response_id"], name: "index_response_rates_on_meeting_date_response_id"
    end
  end
end