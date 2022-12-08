class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table "events", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.text "abstract"
      t.string "coordinates", limit: 64
      t.date "date_range_end_at"
      t.date "date_range_start_at"
      t.text "description"
      t.string "event_phone", limit: 64
      t.text "event_uri"
      t.boolean "free_event", default: false, null: false
      t.boolean "major_event", default: false, null: false
      t.string "name", limit: 128
      t.string "tickets_phone", limit: 64
      t.text "tickets_uri"
      t.integer "venue_id", default: 0, null: false
      t.string "venue_name", limit: 128
      t.string "data_source_id", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.string "shortcut_uri", limit: 128
      t.text "keywords"
      t.text "image_uri"
      t.date "feature_available_at"
      t.date "feature_expire_at"
      t.integer "position", default: 100, null: false
      t.text "meta_title"
      t.text "meta_description"
      t.text "meta_keywords"
      t.text "meta_canonical_uri"
      t.string "temp_data_source_id", limit: 32
      t.integer "status", default: 0, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.datetime "sync_at", precision: nil
      t.boolean "uses_event_date_patterns", default: false
      t.text "temporary_image_uri"
      t.boolean "meta_disallow", default: false, null: false
      t.string "event_email", limit: 64
      t.boolean "searchable", default: true, null: false
      t.text "request_description"
      t.string "data_source_owner_id", limit: 32
      t.boolean "permission_to_use", default: true, null: false
      t.text "venue_ids"
      t.text "custom_uri"
      t.text "custom_uri_description"
      t.text "tracking_content"
      t.date "tracking_start_at"
      t.date "tracking_end_at"
      t.integer "ad_type_id", default: 0, null: false
      t.text "contest_name"
      t.text "contest_description"
      t.date "contest_starts_at"
      t.date "contest_ends_at"
      t.date "contest_event_at"
      t.boolean "contest_featured", default: false, null: false
      t.text "named_content"
      t.text "meta_og_uri"
      t.text "meta_og_type"
      t.text "meta_og_title"
      t.text "meta_og_description"
      t.text "meta_og_image_uri"
      t.index ["shortcut_uri"], name: "index_events_on_shortcut_url"
      t.index ["venue_id"], name: "index_events_on_venue_id"
    end
  end
end