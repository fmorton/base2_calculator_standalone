class CreateCoupons < ActiveRecord::Migration[7.0]
  def change
    create_table "coupons", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.date "display_at"
      t.date "available_at"
      t.date "expire_at"
      t.boolean "leisure_coupon", default: false, null: false
      t.text "description"
      t.text "leisure_disclaimer"
      t.text "leisure_bar_code_uri"
      t.text "leisure_external_coupon_uri"
      t.boolean "convention_coupon", default: false, null: false
      t.text "convention_disclaimer"
      t.text "convention_bar_code_uri"
      t.text "convention_external_coupon_uri"
      t.boolean "hide_address", default: false, null: false
      t.boolean "hide_phone", default: false, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.datetime "sync_at", precision: nil
      t.text "shortcut_uri"
    end
  end
end