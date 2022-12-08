class CreateWebMeetingRooms < ActiveRecord::Migration[7.0]
  def change
    create_table "web_meeting_rooms", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "position", default: 100, null: false
      t.string "name", limit: 64
      t.string "capacity_10x10", limit: 32
      t.string "banquet_capacity", limit: 32
      t.string "ceiling_height", limit: 32
      t.string "classroom_capacity", limit: 32
      t.string "conference_capacity", limit: 32
      t.string "dimensions", limit: 32
      t.string "h_shaped_capacity", limit: 32
      t.string "reception_capacity", limit: 32
      t.string "square_feet", limit: 32
      t.string "theater_capacity", limit: 32
      t.string "u_shaped_capacity", limit: 32
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
    end
  end
end