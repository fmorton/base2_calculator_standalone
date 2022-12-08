class CreateMonthlyOccupancies < ActiveRecord::Migration[7.0]
  def change
    create_table "monthly_occupancies", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "day", default: 0, null: false
      t.integer "month", default: 0, null: false
      t.integer "year", default: 0, null: false
      t.integer "week", default: 0, null: false
      t.decimal "occupancy", precision: 16, scale: 2, default: "0.0"
      t.decimal "occupancy_percentage_change", precision: 16, scale: 2, default: "0.0"
      t.bigint "adr", default: 0
      t.decimal "adr_percentage_change", precision: 16, scale: 2, default: "0.0"
      t.decimal "rev_par", precision: 16, scale: 2, default: "0.0"
      t.decimal "rev_par_percentage_change", precision: 16, scale: 2, default: "0.0"
      t.bigint "supply", default: 0, null: false
      t.decimal "supply_change", precision: 16, scale: 2, default: "0.0"
      t.bigint "demand", default: 0, null: false
      t.decimal "demand_percentage_change", precision: 16, scale: 2, default: "0.0"
      t.bigint "revenue", default: 0, null: false
      t.decimal "revenue_percentage_change", precision: 16, scale: 2, default: "0.0"
      t.bigint "census_property_count", default: 0, null: false
      t.bigint "census_room_count", default: 0, null: false
      t.decimal "census_percentage", precision: 16, scale: 2, default: "0.0"
      t.date "occupancy_at", null: false
      t.string "occupancy_at_string", limit: 16
      t.integer "occupancy_week_of_year", default: -1, null: false
      t.integer "occupancy_day_of_week", default: -1, null: false
      t.string "occupancy_week_and_day", limit: 8
      t.text "occupancy_label"
      t.decimal "group_occupancy", precision: 16, scale: 2, default: "0.0"
      t.decimal "group_adr", precision: 16, scale: 2, default: "0.0"
      t.decimal "group_rev_par", precision: 16, scale: 2, default: "0.0"
      t.bigint "group_demand", default: 0, null: false
      t.bigint "group_revenue", default: 0, null: false
      t.decimal "contract_occupancy", precision: 16, scale: 2, default: "0.0"
      t.decimal "contract_adr", precision: 16, scale: 2, default: "0.0"
      t.decimal "contract_rev_par", precision: 16, scale: 2, default: "0.0"
      t.bigint "contract_demand", default: 0, null: false
      t.bigint "contract_revenue", default: 0, null: false
      t.decimal "transient_occupancy", precision: 16, scale: 2, default: "0.0"
      t.decimal "transient_adr", precision: 16, scale: 2, default: "0.0"
      t.decimal "transient_rev_par", precision: 16, scale: 2, default: "0.0"
      t.bigint "transient_demand", default: 0, null: false
      t.bigint "transient_revenue", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.integer "segment_id", default: 0, null: false
      t.index ["segment_id"], name: "index_monthly_occupancies_on_segment_id"
    end
  end
end
