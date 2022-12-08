class CreateToggles < ActiveRecord::Migration[7.0]
  def change
    create_table "toggles", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "toggle_id", limit: 64
      t.string "toggle_label", limit: 64
      t.integer "person_id", default: 0, null: false
      t.boolean "open", default: true, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["toggle_id"], name: "index_toggles_on_toggle_id"
      t.index ["toggle_label"], name: "index_toggles_on_toggle_label"
    end
  end
end