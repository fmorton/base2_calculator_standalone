class CreateWebSiteSearches < ActiveRecord::Migration[7.0]
  def change
    create_table "web_site_searches", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.integer "parent_object_id", default: 0, null: false
      t.string "parent_object_type", limit: 32
      t.text "name"
      t.text "content"
      t.text "keywords"
      t.string "shortcut_uri", limit: 128
      t.string "view_type", limit: 32
      t.string "data_source_id", limit: 32
      t.text "image_uri"
      t.datetime "sync_at", precision: nil
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.text "search_content"
      t.string "coordinates", limit: 64
      t.text "named_content"
      t.text "address"
      t.text "date_end"
      t.text "date_range"
      t.text "date_start"
      t.text "organization_type"
      t.text "phone_fax"
      t.text "phone_main"
      t.text "phone_toll_free"
      t.text "sort_name"
      t.integer "venue_id", default: 0, null: false
      t.text "venue_name"
      t.text "venue_uri"
      t.integer "analytics_score", default: 0, null: false
      t.text "date_sort"
      t.text "date_range_with_times"
      t.text "venue_names"
      t.integer "position", default: 100, null: false
      t.index ["parent_object_id"], name: "index_web_site_searches_on_parent_object_id"
      t.index ["shortcut_uri"], name: "index_web_site_searches_on_shortcut_url"
    end
  end
end