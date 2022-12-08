class CreateWebRequests < ActiveRecord::Migration[7.0]
  def change
    create_table "web_requests", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "person_id", default: 0, null: false
      t.integer "organization_id", default: 0, null: false
      t.text "name_first"
      t.text "name_last"
      t.text "organization_name"
      t.string "title", limit: 128
      t.string "email", limit: 64
      t.string "phone", limit: 32
      t.string "phone_fax", limit: 32
      t.string "address1", limit: 128
      t.string "address2", limit: 128
      t.string "address3", limit: 128
      t.string "city", limit: 64
      t.string "state", limit: 32
      t.string "zip", limit: 32
      t.string "country", limit: 64
      t.string "subject", limit: 96
      t.text "content"
      t.text "named_content"
      t.string "label", limit: 96
      t.boolean "sign_up", default: false, null: false
      t.boolean "accept_terms_and_conditions", default: false, null: false
      t.boolean "needs_sync", default: false, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.string "age", limit: 32
      t.string "gender", limit: 32
      t.string "birthday", limit: 32
      t.text "document_uri"
      t.text "document_uri_mime_type"
      t.integer "purpose_id", default: 0, null: false
      t.integer "source_id", default: 0, null: false
      t.integer "count_value", default: 0, null: false
      t.integer "delivery_method_id", default: 0, null: false
      t.date "delivered_at"
      t.string "data_source_id", limit: 32
      t.integer "batch_id", default: 0, null: false
      t.date "request_at"
      t.index ["needs_sync"], name: "index_web_requests_needs_sync"
    end
  end
end
