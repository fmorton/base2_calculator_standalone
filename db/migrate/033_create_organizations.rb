class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table "organizations", id: :serial, force: :cascade do |t|
      t.integer "context_organization_id", default: 0, null: false
      t.string "name", limit: 255
      t.string "key", limit: 32
      t.integer "parent_id", default: 0, null: false
      t.text "secure_locations"
      t.boolean "secure_with_ssl"
      t.string "data_source_id", limit: 32
      t.string "sort_name", limit: 128
      t.string "former_name", limit: 128
      t.string "acronym", limit: 16
      t.string "phone_main", limit: 64
      t.string "phone_fax", limit: 64
      t.string "phone_toll_free", limit: 64
      t.string "expedia_id", limit: 32
      t.string "passkey_id", limit: 32
      t.text "website"
      t.string "email", limit: 64
      t.string "coordinates", limit: 64
      t.text "keywords"
      t.string "shortcut_uri", limit: 128
      t.string "view_type", limit: 32
      t.text "server_names"
      t.string "default_layout", limit: 32
      t.string "label", limit: 32
      t.string "default_controller", limit: 128
      t.string "default_action", limit: 128
      t.string "unknown_controller", limit: 128
      t.string "unknown_action", limit: 128
      t.string "unknown_layout", limit: 32
      t.integer "data_source_status", default: 0, null: false
      t.boolean "hyphen_view_type", default: false, null: false
      t.text "image_uri"
      t.text "meta_title"
      t.text "meta_description"
      t.text "meta_keywords"
      t.text "meta_canonical_uri"
      t.string "aci_organization_id", limit: 32
      t.string "aci_venue_id", limit: 32
      t.integer "status", default: 0, null: false
      t.integer "county_id", default: 0, null: false
      t.string "cross_street_1", limit: 96
      t.string "cross_street_2", limit: 96
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.datetime "sync_at", precision: nil
      t.text "comments"
      t.text "temporary_image_uri"
      t.boolean "umbrella", default: false
      t.boolean "meta_disallow", default: false, null: false
      t.boolean "searchable", default: true, null: false
      t.datetime "coordinates_updated_at", precision: nil
      t.string "data_source_owner_id", limit: 32
      t.text "twitter_handle"
      t.text "yelp_id"
      t.text "alternate_names"
      t.string "twitter_last_id", limit: 64
      t.text "tracking_content"
      t.date "tracking_start_at"
      t.date "tracking_end_at"
      t.integer "ad_type_id", default: 0, null: false
      t.text "yelp_api_id"
      t.text "website_tiny_redirect"
      t.text "facebook_uri"
      t.text "instagram_username"
      t.text "meta_og_uri"
      t.text "meta_og_type"
      t.text "meta_og_title"
      t.text "meta_og_description"
      t.text "meta_og_image_uri"
      t.boolean "hide_yelp_reviews", default: false, null: false
      t.index ["data_source_id"], name: "index_organizations_on_data_source_id"
      t.index ["parent_id"], name: "index_organizations_on_parent_id"
      t.index ["shortcut_uri"], name: "index_organizations_on_shortcut_url"
      t.index ["updated_at"], name: "index_organizations_on_updated_at"
    end
  end
end