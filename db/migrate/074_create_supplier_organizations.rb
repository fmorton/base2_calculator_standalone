class CreateSupplierOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table "supplier_organizations", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.string "expedia_id", limit: 32
      t.string "passkey_id", limit: 32
      t.string "aci_organization_id", limit: 32
      t.string "aci_venue_id", limit: 32
      t.date "qualified_at"
      t.integer "qualified_by", default: 0, null: false
      t.integer "qualified_by_author_id", default: 0, null: false
      t.integer "sales_manager_id", default: 0, null: false
      t.boolean "receives_leads", default: false, null: false
      t.boolean "hide_coupon_address", default: false, null: false
      t.boolean "hide_coupon_phone", default: false, null: false
      t.integer "naics_id", default: 0, null: false
      t.text "open_table_id"
      t.boolean "connected_to_convention_center", default: false, null: false
      t.integer "restaurant_cost_range_id", default: 0, null: false
      t.integer "accommodation_rooms_handicap", default: 0, null: false
      t.integer "accommodation_rooms_one_double", default: 0, null: false
      t.integer "accommodation_rooms_one_king", default: 0, null: false
      t.integer "accommodation_rooms_one_queen", default: 0, null: false
      t.integer "accommodation_rooms_sleeping", default: 0, null: false
      t.integer "accommodation_rooms_two_double", default: 0, null: false
      t.integer "accommodation_rooms_two_king", default: 0, null: false
      t.integer "accommodation_rooms_two_queen", default: 0, null: false
      t.integer "accommodation_suites", default: 0, null: false
      t.string "admission_adults", limit: 96
      t.string "admission_children", limit: 96
      t.string "admission_children_age", limit: 96
      t.string "admission_seniors", limit: 96
      t.string "admission_seniors_age", limit: 96
      t.boolean "group_rates_available", default: false, null: false
      t.text "hours_of_operation"
      t.text "days_of_operation"
      t.boolean "open_all_year", default: false, null: false
      t.string "seating_capacity", limit: 64
      t.integer "total_meeting_room_count", default: 0, null: false
      t.integer "total_meeting_square_footage", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.integer "capacity_10x10", default: 0, null: false
      t.integer "banquet_capacity", default: 0, null: false
      t.integer "classroom_capacity", default: 0, null: false
      t.integer "conference_capacity", default: 0, null: false
      t.integer "h_shaped_capacity", default: 0, null: false
      t.integer "reception_capacity", default: 0, null: false
      t.integer "theater_capacity", default: 0, null: false
      t.integer "u_shaped_capacity", default: 0, null: false
      t.integer "maximum_capacity", default: 0, null: false
      t.string "accounting_id", limit: 32
      t.date "accounting_last_payment_at"
      t.integer "accounting_last_payment_product_id", default: 0, null: false
      t.decimal "accounting_last_payment_amount", precision: 12, scale: 2, default: "0.0"
      t.decimal "accounting_balance", precision: 12, scale: 2, default: "0.0"
      t.decimal "accounting_balance_30_days", precision: 12, scale: 2, default: "0.0"
      t.decimal "accounting_balance_60_days", precision: 12, scale: 2, default: "0.0"
      t.decimal "accounting_balance_90_days", precision: 12, scale: 2, default: "0.0"
      t.decimal "accounting_balance_120_plus_days", precision: 12, scale: 2, default: "0.0"
      t.text "accessibility_uri"
      t.integer "private_dining_capacity", default: 0, null: false
      t.text "venue_space_details"
      t.text "ares_id"
      t.text "ares_uri"
      t.text "ares_name"
      t.text "ares_rate"
      t.text "restaurant_carry_out_uri"
      t.index ["organization_id"], name: "index_supplier_organizations_on_organization_id"
    end
  end
end