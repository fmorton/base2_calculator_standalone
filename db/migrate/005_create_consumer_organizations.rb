class CreateConsumerOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table "consumer_organizations", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.integer "large_meeting_sales_manager_id", default: 0, null: false
      t.integer "large_meeting_services_manager_id", default: 0, null: false
      t.integer "small_meeting_sales_manager_id", default: 0, null: false
      t.integer "small_meeting_services_manager_id", default: 0, null: false
      t.integer "market_segment_id", default: 0, null: false
      t.integer "meetings_per_year", default: 0, null: false
      t.integer "peak_room_range_from", default: 0, null: false
      t.integer "peak_room_range_to", default: 0, null: false
      t.integer "attendance_range_from", default: 0, null: false
      t.integer "attendance_range_to", default: 0, null: false
      t.integer "exhibit_gsf_range_from", default: 0, null: false
      t.integer "exhibit_gsf_range_to", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["market_segment_id"], name: "index_consumer_organizations_on_market_segment_id"
      t.index ["organization_id"], name: "index_consumer_organizations_on_organization_id"
    end
  end
end