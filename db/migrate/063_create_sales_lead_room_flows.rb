class CreateSalesLeadRoomFlows < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_date_room_flows", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.string "room_flow_type", limit: 4
      t.integer "room_count", default: 0, null: false
      t.integer "position", default: 0, null: false
      t.date "room_flow_1_at"
      t.date "room_flow_2_at"
      t.date "room_flow_3_at"
      t.integer "room_flow_week_of_year_1", default: -1, null: false
      t.integer "room_flow_day_of_week_1", default: -1, null: false
      t.string "room_flow_week_and_day_1", limit: 8
      t.integer "room_flow_week_of_year_2", default: -1, null: false
      t.integer "room_flow_day_of_week_2", default: -1, null: false
      t.string "room_flow_week_and_day_2", limit: 8
      t.integer "room_flow_week_of_year_3", default: -1, null: false
      t.integer "room_flow_day_of_week_3", default: -1, null: false
      t.string "room_flow_week_and_day_3", limit: 8
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.datetime "sync_at", precision: nil
      t.index ["meeting_date_id"], name: "index_room_flows_on_meeting_date_id"
      t.index ["room_flow_week_and_day_1"], name: "index_room_flows_on_room_flow_week_and_day_1"
    end
  end
end