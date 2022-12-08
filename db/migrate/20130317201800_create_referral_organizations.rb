class CreateReferralOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table "referral_organizations", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "referral_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.integer "person_id", default: 0, null: false
      t.integer "response_by", default: 0, null: false
      t.text "response"
      t.date "response_updated_at"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
    end
  end
end
