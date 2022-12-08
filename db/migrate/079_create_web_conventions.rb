class CreateWebConventions < ActiveRecord::Migration[7.0]
  def change
    create_table "web_conventions", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "meeting_date_id", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.string "name", limit: 64
      t.string "title", limit: 128
      t.string "date_description", limit: 64
      t.string "image_uri", limit: 128
      t.string "shortcut_uri", limit: 32
      t.text "meta_title"
      t.text "meta_description"
      t.text "meta_keywords"
      t.text "meta_canonical_uri"
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.text "description"
      t.boolean "meta_disallow", default: false, null: false
      t.text "external_description_1"
      t.text "external_description_2"
      t.text "external_description_3"
      t.text "external_description_4"
      t.text "external_description_5"
      t.text "external_description_6"
      t.text "external_uri_1"
      t.text "external_uri_2"
      t.text "external_uri_3"
      t.text "external_uri_4"
      t.text "external_uri_5"
      t.text "external_uri_6"
      t.text "logo_uri"
      t.text "welcome_description"
      t.text "html_code"
      t.integer "html_code_type", default: 0, null: false
      t.index ["shortcut_uri"], name: "index_web_conventions_on_shortcut_url"
    end
  end
end