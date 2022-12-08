class CreateEventDatePatterns < ActiveRecord::Migration[7.0]
  def change
    create_table "event_date_patterns", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "pattern", limit: 8
      t.date "start_at"
      t.date "end_at"
      t.integer "interval", default: 1, null: false
      t.string "week", limit: 8, default: "0"
      t.integer "start_time_hour", default: 0, null: false
      t.integer "start_time_minute", default: 0, null: false
      t.string "start_time_am_pm", limit: 2
      t.integer "end_time_hour", default: 0, null: false
      t.integer "end_time_minute", default: 0, null: false
      t.string "end_time_am_pm", limit: 2
      t.boolean "sunday", default: false, null: false
      t.boolean "monday", default: false, null: false
      t.boolean "tuesday", default: false, null: false
      t.boolean "wednesday", default: false, null: false
      t.boolean "thursday", default: false, null: false
      t.boolean "friday", default: false, null: false
      t.boolean "saturday", default: false, null: false
      t.date "exception_1_at"
      t.date "exception_2_at"
      t.date "exception_3_at"
      t.date "exception_4_at"
      t.integer "event_id", default: 0, null: false
      t.string "time_pattern", limit: 8
      t.string "day", limit: 16
      t.integer "day_of_month", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["event_id"], name: "index_event_date_patterns_on_event_id"
    end
  end
end