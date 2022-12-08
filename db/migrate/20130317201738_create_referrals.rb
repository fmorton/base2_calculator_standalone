class CreateReferrals < ActiveRecord::Migration[7.0]
  def change
    create_table "referrals", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.integer "person_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.integer "services_manager_id", default: 0, null: false
      t.text "title"
      t.text "description"
      t.date "response_needed_at"
      t.boolean "referral", default: false, null: false
      t.boolean "lead", default: false, null: false
      t.text "rfp_uri"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.datetime "sent_at", precision: nil
    end
  end
end
