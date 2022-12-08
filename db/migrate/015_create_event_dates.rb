class CreateEventDates < ActiveRecord::Migration[7.0]
  create_table "event_dates", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "event_id", default: 0, null: false
    t.date "event_at"
    t.string "event_times", limit: 128, null: false
    t.integer "event_date_pattern_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "sync_at", precision: nil
    t.index ["event_at"], name: "index_event_dates_on_event_at"
    t.index ["event_date_pattern_id"], name: "index_event_dates_on_event_date_pattern_id"
    t.index ["event_id"], name: "index_event_dates_on_event_id"
  end
end