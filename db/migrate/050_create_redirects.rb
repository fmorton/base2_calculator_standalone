class CreateRedirects < ActiveRecord::Migration[7.0]
  def change
    create_table "redirects", id: :serial, force: :cascade do |t|
      t.string "controller", limit: 255
      t.string "action", limit: 255
      t.string "hostname", limit: 255, default: "", null: false
      t.integer "action_id", default: 0, null: false
      t.integer "context_organization_id", default: 0, null: false
      t.string "shortcut_uri", limit: 128, default: ""
      t.string "layout", limit: 32
      t.string "label", limit: 64
      t.text "params"
      t.text "target_uri"
      t.text "meta_title"
      t.text "meta_description"
      t.text "meta_keywords"
      t.text "meta_canonical_uri"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.date "available_at"
      t.date "expire_at"
      t.boolean "meta_disallow", default: false, null: false
      t.text "tracking_content"
      t.date "tracking_start_at"
      t.date "tracking_end_at"
      t.text "meta_og_uri"
      t.text "meta_og_type"
      t.text "meta_og_title"
      t.text "meta_og_description"
      t.text "meta_og_image_uri"
      t.index ["shortcut_uri"], name: "index_redirects_on_shortcut_url"
    end
  end
end