class CreateSalesLeadApprovals < ActiveRecord::Migration[7.0]
  def change
    create_table "meeting_date_approvals", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.integer "approval_by", default: 0, null: false
      t.integer "approval_status", default: 0, null: false
      t.date "approval_at"
      t.integer "position", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.index ["meeting_date_id"], name: "index_meeting_date_approvals_on_meeting_date_id"
    end
  end
end