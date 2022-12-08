class CreateEmailQueues < ActiveRecord::Migration[7.0]
  def change
    create_table "email_queues", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "server", limit: 64
      t.text "subject"
      t.text "from"
      t.text "to"
      t.text "cc"
      t.text "bcc"
      t.text "content"
      t.datetime "requested_at", precision: nil
      t.datetime "started_at", precision: nil
      t.datetime "finished_at", precision: nil
      t.boolean "completed", default: false, null: false
      t.string "label", limit: 96
      t.text "mime_type"
      t.text "error_message"
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
      t.index ["completed"], name: "index_email_queues_on_completed"
      t.index ["label"], name: "index_email_queues_on_label"
      t.index ["requested_at"], name: "index_email_queues_on_requested_at"
    end
  end
end