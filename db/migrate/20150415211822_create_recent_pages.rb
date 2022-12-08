class CreateRecentPages < ActiveRecord::Migration[7.0]
  def change
    create_table "recent_pages", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.text "page_type"
      t.text "page_name"
      t.text "page_uri"
      t.text "page_action"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.integer "page_id", default: 0, null: false
      t.index ["created_by"], name: "index_recent_pages_on_created_by"
      t.index ["page_id", "page_type"], name: "index_recent_pages_on_page_id_and_page_type"
    end
  end
end
