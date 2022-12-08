class CreateMeetingDateGroupTourDates < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_date_group_tour_dates", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.date "tour_at"
      t.string "tour_time", limit: 32
      t.integer "tour_attendance", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.integer "tour_guide_1_id", default: 0, null: false
      t.integer "tour_guide_2_id", default: 0, null: false
      t.integer "tour_guide_3_id", default: 0, null: false
      t.integer "tour_guide_4_id", default: 0, null: false
      t.integer "tour_type_id", default: 0, null: false
      t.text "notes"
      t.string "tiny_notes", limit: 64
      t.string "video_times", limit: 64
      t.date "due_at"
      t.decimal "deposit_amount", precision: 12, scale: 2, default: "0.0"
      t.decimal "balance_due", precision: 12, scale: 2, default: "0.0"
      t.date "guarantee_at"
    end
  end
end
