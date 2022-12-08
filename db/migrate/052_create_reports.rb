class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table "reports", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "name", limit: 64, null: false
      t.string "primary_table_name", limit: 64
      t.integer "created_by", default: 0
      t.integer "updated_by", default: 0
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.text "canned_report_uri"
      t.text "canned_report_sql"
      t.text "custom_report_name"
      t.boolean "link_opens_new_window", default: false, null: false
    end
  end
end