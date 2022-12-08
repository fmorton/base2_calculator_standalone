class CreateClicks < ActiveRecord::Migration[7.0]
  def change
    create_table "clicks", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.text "session_id"
      t.text "request_ip"
      t.text "request_fullpath"
      t.text "request_original_fullpath"
      t.text "request_remote_ip"
      t.text "header_http_user_agent"
      t.text "header_remote_addr"
      t.text "header_remote_host"
      t.text "header_http_referer"
      t.boolean "spider"
      t.datetime "created_at", precision: nil, null: false
      t.datetime "updated_at", precision: nil, null: false
      t.text "controller"
      t.text "action"
      t.index ["parent_object_id"], name: "index_clicks_on_parent_object_id"
    end
  end
end
