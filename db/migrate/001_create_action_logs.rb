class CreateActionLogs < ActiveRecord::Migration[7.0]
  def change
    create_table "action_logs", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "name", limit: 128
      t.datetime "started_at", precision: nil
      t.datetime "finished_at", precision: nil
      t.boolean "completed", default: false, null: false
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
      t.index ["name"], name: "index_action_logs_on_name"
    end
  end
end