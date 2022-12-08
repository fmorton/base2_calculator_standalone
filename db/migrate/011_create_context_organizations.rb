class CreateContextOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table "context_organizations", id: :serial, force: :cascade do |t|
      t.string "name", limit: 255
      t.string "label", limit: 32
      t.text "server_names"
      t.text "secure_locations"
      t.boolean "secure_with_ssl"
      t.string "default_layout", limit: 32
      t.string "default_controller", limit: 128
      t.string "default_action", limit: 128
      t.string "unknown_controller", limit: 128
      t.string "unknown_action", limit: 128
      t.string "unknown_layout", limit: 32
      t.boolean "hyphen_view_type", default: false, null: false
      t.integer "created_by", default: 0, null: false
      t.integer "updated_by", default: 0, null: false
      t.datetime "created_at", precision: nil
      t.datetime "updated_at", precision: nil
      t.text "navigation"
      t.integer "cdn_server_count", default: 0, null: false
      t.string "short_name", limit: 32
      t.text "logo_uri"
      t.text "small_logo_uri"
      t.text "named_content"
      t.text "email_provider_id"
      t.text "email_provider_user_id"
      t.text "email_provider_password"
      t.text "email_provider_key"
      t.text "email_provider_api_class_name"
      t.text "google_account_id"
      t.text "google_username"
      t.text "google_password"
      t.string "cdn_server_name", limit: 64
      t.string "cdn_bucket_name", limit: 32
      t.string "facebook_api_id", limit: 64
      t.string "facebook_api_key", limit: 64
      t.string "facebook_secret", limit: 64
      t.string "instagram_client_id", limit: 64
      t.string "instagram_client_secret", limit: 64
      t.text "instagram_uri"
      t.string "pinterest_client_id", limit: 64
      t.string "pinterest_client_secret", limit: 64
      t.string "pinterest_password", limit: 64
      t.string "pinterest_username", limit: 64
      t.string "yelp_consumer_key", limit: 64
      t.string "yelp_consumer_secret", limit: 64
      t.string "yelp_token", limit: 64
      t.string "yelp_token_secret", limit: 64
      t.string "yelp_version_1_key", limit: 64
      t.string "twitter_owner", limit: 64
      t.string "twitter_owner_id", limit: 64
      t.string "twitter_api_key", limit: 64
      t.string "twitter_api_secret", limit: 64
      t.string "twitter_access_token", limit: 64
      t.string "twitter_access_token_secret", limit: 64
      t.string "jmail_server", limit: 64
      t.string "jmail_username", limit: 64
      t.string "jmail_password", limit: 64
      t.integer "jmail_port", default: 0, null: false
      t.string "jmail_domain_name", limit: 64
      t.string "jmail_bucket_name", limit: 32
      t.integer "jmail_note_type_id", default: 0, null: false
      t.boolean "jmail_secure_with_ssl", default: true, null: false
      t.string "website", limit: 64
      t.string "convention_center_name", limit: 128
      t.string "convention_center_short_name", limit: 32
      t.text "jmail_website"
      t.text "jmail_from"
      t.text "report_logo_uri"
      t.text "report_footer"
      t.text "shared_context_organization_ids"
      t.text "yelp_fusion_client_id"
      t.text "yelp_fusion_api_key"
      t.text "email_block_list"
      t.text "api_username"
      t.text "api_password"
      t.text "api_token"
      t.text "api_ip_address"
      t.index ["api_username"], name: "index_context_organizations_on_api_username"
    end
  end
end