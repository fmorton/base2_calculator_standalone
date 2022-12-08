class CreateConventionSalesGoals < ActiveRecord::Migration[7.0]
  def change
    create_table "convention_sales_goals", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "year", default: 0, null: false
      t.integer "person_id", default: 0, null: false
      t.integer "definite_room_nights_1", default: 0, null: false
      t.integer "definite_room_nights_2", default: 0, null: false
      t.integer "definite_room_nights_3", default: 0, null: false
      t.integer "definite_room_nights_4", default: 0, null: false
      t.integer "definite_room_nights_5", default: 0, null: false
      t.integer "definite_room_nights_6", default: 0, null: false
      t.integer "definite_room_nights_7", default: 0, null: false
      t.integer "definite_room_nights_8", default: 0, null: false
      t.integer "definite_room_nights_9", default: 0, null: false
      t.integer "definite_room_nights_10", default: 0, null: false
      t.integer "definite_room_nights_11", default: 0, null: false
      t.integer "definite_room_nights_12", default: 0, null: false
      t.integer "definite_room_nights_total", default: 0, null: false
      t.integer "tentative_room_nights_1", default: 0, null: false
      t.integer "tentative_room_nights_2", default: 0, null: false
      t.integer "tentative_room_nights_3", default: 0, null: false
      t.integer "tentative_room_nights_4", default: 0, null: false
      t.integer "tentative_room_nights_5", default: 0, null: false
      t.integer "tentative_room_nights_6", default: 0, null: false
      t.integer "tentative_room_nights_7", default: 0, null: false
      t.integer "tentative_room_nights_8", default: 0, null: false
      t.integer "tentative_room_nights_9", default: 0, null: false
      t.integer "tentative_room_nights_10", default: 0, null: false
      t.integer "tentative_room_nights_11", default: 0, null: false
      t.integer "tentative_room_nights_12", default: 0, null: false
      t.integer "tentative_room_nights_total", default: 0, null: false
      t.integer "solicitation_attempts_1", default: 0, null: false
      t.integer "solicitation_attempts_2", default: 0, null: false
      t.integer "solicitation_attempts_3", default: 0, null: false
      t.integer "solicitation_attempts_4", default: 0, null: false
      t.integer "solicitation_attempts_5", default: 0, null: false
      t.integer "solicitation_attempts_6", default: 0, null: false
      t.integer "solicitation_attempts_7", default: 0, null: false
      t.integer "solicitation_attempts_8", default: 0, null: false
      t.integer "solicitation_attempts_9", default: 0, null: false
      t.integer "solicitation_attempts_10", default: 0, null: false
      t.integer "solicitation_attempts_11", default: 0, null: false
      t.integer "solicitation_attempts_12", default: 0, null: false
      t.integer "solicitation_attempts_total", default: 0, null: false
      t.integer "solicitation_connects_1", default: 0, null: false
      t.integer "solicitation_connects_2", default: 0, null: false
      t.integer "solicitation_connects_3", default: 0, null: false
      t.integer "solicitation_connects_4", default: 0, null: false
      t.integer "solicitation_connects_5", default: 0, null: false
      t.integer "solicitation_connects_6", default: 0, null: false
      t.integer "solicitation_connects_7", default: 0, null: false
      t.integer "solicitation_connects_8", default: 0, null: false
      t.integer "solicitation_connects_9", default: 0, null: false
      t.integer "solicitation_connects_10", default: 0, null: false
      t.integer "solicitation_connects_11", default: 0, null: false
      t.integer "solicitation_connects_12", default: 0, null: false
      t.integer "solicitation_connects_total", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
      t.index ["person_id"], name: "index_convention_sales_goals_on_person_id"
    end
  end
end
