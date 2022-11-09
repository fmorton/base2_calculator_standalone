class CreateMonthlyOccupancies < ActiveRecord::Migration
  def change
    create_table :monthly_occupancies do |t|
      t.integer  "context_organization_id", default: 0, null: false
      t.integer  "day", default: 0, null: false
      t.integer  "month", default: 0, null: false
      t.integer  "year", default: 0, null: false
      t.integer  "week", default: 0, null: false
      t.decimal  "occupancy", precision: 12, scale: 2, default: 0.0
      t.decimal  "occupancy_percentage_change", precision: 12, scale: 2, default: 0.0
      t.decimal  "adr", precision: 12, scale: 2, default: 0.0
      t.decimal  "adr_percentage_change", precision: 12, scale: 2, default: 0.0
      t.decimal  "rev_par", precision: 12, scale: 2, default: 0.0
      t.decimal  "rev_par_percentage_change", precision: 12, scale: 2, default: 0.0
      t.integer  "supply", default: 0, null: false
      t.decimal  "supply_change", precision: 12, scale: 2, default: 0.0
      t.integer  "demand", default: 0, null: false
      t.decimal  "demand_percentage_change", precision: 12, scale: 2, default: 0.0
      t.integer  "revenue", default: 0, null: false
      t.decimal  "revenue_percentage_change", precision: 12, scale: 2, default: 0.0
      t.integer  "census_property_count", default: 0, null: false
      t.integer  "census_room_count", default: 0, null: false
      t.decimal  "census_percentage", precision: 12, scale: 2, default: 0.0
      t.date     "occupancy_at", null: false
      t.string   "occupancy_at_string", limit: 16
      t.integer  "occupancy_week_of_year", default: -1, null: false
      t.integer  "occupancy_day_of_week", default: -1, null: false
      t.string   "occupancy_week_and_day", limit: 8
      t.text     "occupancy_label"
      t.decimal  "group_occupancy", precision: 12, scale: 2, default: 0.0
      t.decimal  "group_adr", precision: 12, scale: 2, default: 0.0
      t.decimal  "group_rev_par", precision: 12, scale: 2, default: 0.0
      t.integer  "group_demand", default: 0, null: false
      t.integer  "group_revenue", default: 0, null: false
      t.decimal  "contract_occupancy", precision: 12, scale: 2, default: 0.0
      t.decimal  "contract_adr", precision: 12, scale: 2, default: 0.0
      t.decimal  "contract_rev_par", precision: 12, scale: 2, default: 0.0
      t.integer  "contract_demand", default: 0, null: false
      t.integer  "contract_revenue", default: 0, null: false
      t.decimal  "transient_occupancy", precision: 12, scale: 2, default: 0.0
      t.decimal  "transient_adr", precision: 12, scale: 2, default: 0.0
      t.decimal  "transient_rev_par", precision: 12, scale: 2, default: 0.0
      t.integer  "transient_demand", default: 0, null: false
      t.integer  "transient_revenue", default: 0, null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
