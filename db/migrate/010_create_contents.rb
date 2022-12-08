class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table "contents", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "title", limit: 255
      t.string "subtitle", limit: 255
      t.text "content"
      t.text "named_content"
      t.boolean "public"
      t.integer "position", default: 100, null: false
      t.integer "status", default: 0, null: false
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.date "display_at"
      t.date "available_at"
      t.date "expire_at"
      t.text "image_uri"
      t.text "link_uri"
      t.text "link_uri_description"
      t.boolean "link_opens_new_window", default: false, null: false
      t.text "image_uri_alt"
      t.text "abstract"
      t.text "keywords"
      t.string "author", limit: 64
      t.text "shortcut_uri"
      t.integer "content_feed_id", default: 0, null: false
      t.text "meta_title"
      t.text "meta_description"
      t.text "meta_keywords"
      t.text "meta_canonical_uri"
      t.string "analytics_name", limit: 128
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.boolean "searchable", default: true, null: false
      t.string "label", limit: 96
      t.text "tiny_title"
      t.text "temporary_image_uri"
      t.boolean "meta_disallow", default: false, null: false
      t.string "data_source_owner_id", limit: 32
      t.boolean "permission_to_use", default: true, null: false
      t.string "password", limit: 32
      t.text "password_content"
      t.text "alternate_content"
      t.text "tracking_content"
      t.date "tracking_start_at"
      t.date "tracking_end_at"
      t.integer "ad_type_id", default: 0, null: false
      t.text "meta_og_uri"
      t.text "meta_og_type"
      t.text "meta_og_title"
      t.text "meta_og_description"
      t.text "meta_og_image_uri"
      t.text "sort_title"
      t.text "link_uri_alt"
      t.index ["author"], name: "index_contents_on_author"
      t.index ["image_uri"], name: "index_contents_on_image_uri"
      t.index ["label"], name: "index_contents_on_label"
    end
  end
end