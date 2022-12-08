class CreateMeetingDateConfigurations < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_date_configurations", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "property_name", limit: 64
      t.boolean "view", default: false, null: false
      t.integer "meeting_status_id", default: 0, null: false
      t.integer "approval_type_id", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
      t.integer "requirements_id", default: 0, null: false
    end
  end
end
