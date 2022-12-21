# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_08_231803) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_stat_statements"
  enable_extension "plpgsql"

  create_table "action_logs", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "name", limit: 128
    t.datetime "started_at", precision: nil
    t.datetime "finished_at", precision: nil
    t.boolean "completed", default: false, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["name"], name: "index_action_logs_on_name"
  end

  create_table "addresses", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.string "address1", limit: 255
    t.string "address2", limit: 255
    t.string "address3", limit: 255
    t.string "city", limit: 255
    t.string "state", limit: 255
    t.string "zip", limit: 255
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "data_source_owner_id", limit: 32
    t.string "name", limit: 255
    t.string "address_type", limit: 16
    t.text "country"
    t.index ["parent_object_id"], name: "index_addresses_on_parent_object_id"
    t.index ["parent_object_type"], name: "index_addresses_on_parent_object_type"
  end

  create_table "analytics_scores", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.integer "pageviews", default: 0, null: false
    t.integer "score", default: 0, null: false
    t.integer "minimum", default: 0, null: false
    t.integer "maximum", default: 1000, null: false
    t.decimal "multiplier", precision: 12, scale: 2, default: "1.0"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "archives", force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.text "name"
    t.datetime "archive_at", precision: nil
    t.integer "archive_by", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.text "serialized_value"
    t.string "serialized_type", limit: 64
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["archive_at"], name: "index_archives_on_archive_at"
    t.index ["parent_object_id"], name: "index_archives_on_parent_object_id"
  end

  create_table "attachments", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "data_source_id", default: 0
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32, null: false
    t.text "name"
    t.text "uri"
    t.text "uri_mime_type"
    t.text "uri_thumb"
    t.text "uri_thumb_mime_type"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "attachment_type", limit: 32, default: "", null: false
    t.index ["parent_object_id", "parent_object_type"], name: "index_attachments_on_parent_object_id_and_parent_object_type"
  end

  create_table "change_logs", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.text "name"
    t.text "from_value"
    t.text "to_value"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["parent_object_id", "parent_object_type"], name: "index_change_logs_on_parent_object"
  end

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

  create_table "constant_values", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "label", limit: 96
    t.string "name", limit: 96
    t.string "reference", limit: 96
    t.string "value", limit: 96
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["label", "reference"], name: "index_constant_values_on_label_and_reference"
  end

  create_table "consumer_organizations", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "large_meeting_sales_manager_id", default: 0, null: false
    t.integer "large_meeting_services_manager_id", default: 0, null: false
    t.integer "small_meeting_sales_manager_id", default: 0, null: false
    t.integer "small_meeting_services_manager_id", default: 0, null: false
    t.integer "market_segment_id", default: 0, null: false
    t.integer "meetings_per_year", default: 0, null: false
    t.integer "peak_room_range_from", default: 0, null: false
    t.integer "peak_room_range_to", default: 0, null: false
    t.integer "attendance_range_from", default: 0, null: false
    t.integer "attendance_range_to", default: 0, null: false
    t.integer "exhibit_gsf_range_from", default: 0, null: false
    t.integer "exhibit_gsf_range_to", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["market_segment_id"], name: "index_consumer_organizations_on_market_segment_id"
    t.index ["organization_id"], name: "index_consumer_organizations_on_organization_id"
  end

  create_table "content_content_connections", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "content_1_id", default: 0, null: false
    t.integer "content_2_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "data_source_owner_id", limit: 32
  end

  create_table "content_event_connections", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "content_id", default: 0, null: false
    t.integer "event_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "data_source_owner_id", limit: 32
  end

  create_table "content_feeds", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.text "feed_uri"
    t.string "name", limit: 64
    t.string "author", limit: 64
    t.text "description"
    t.text "image_uri"
    t.boolean "staff_content_feed", default: false, null: false
    t.integer "status", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "content_organization_connections", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "content_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "data_source_owner_id", limit: 32
  end

  create_table "content_video_details", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "content_id", default: 0, null: false
    t.string "video_length", limit: 32
    t.string "video_duration", limit: 32
    t.text "podcast_uri"
    t.text "youtube_embed_code"
    t.text "artwork_uri"
    t.text "alternate_artwork_uri"
    t.text "flash_uri"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

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
    t.integer "sign_up_by", default: 0, null: false
    t.string "sign_up_email"
    t.datetime "sign_up_start_at"
    t.datetime "sign_up_end_at"
  end

  create_table "convention_sales_goals", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "year", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "definite_room_nights_1", default: 0, null: false
    t.integer "definite_room_nights_2", default: 0, null: false
    t.integer "definite_room_nights_3", default: 0, null: false
    t.integer "definite_room_nights_4", default: 0, null: false
    t.integer "definite_room_nights_5", default: 0, null: false
    t.integer "definite_room_nights_6", default: 0, null: false
    t.integer "definite_room_nights_7", default: 0, null: false
    t.integer "definite_room_nights_8", default: 0, null: false
    t.integer "definite_room_nights_9", default: 0, null: false
    t.integer "definite_room_nights_10", default: 0, null: false
    t.integer "definite_room_nights_11", default: 0, null: false
    t.integer "definite_room_nights_12", default: 0, null: false
    t.integer "definite_room_nights_total", default: 0, null: false
    t.integer "tentative_room_nights_1", default: 0, null: false
    t.integer "tentative_room_nights_2", default: 0, null: false
    t.integer "tentative_room_nights_3", default: 0, null: false
    t.integer "tentative_room_nights_4", default: 0, null: false
    t.integer "tentative_room_nights_5", default: 0, null: false
    t.integer "tentative_room_nights_6", default: 0, null: false
    t.integer "tentative_room_nights_7", default: 0, null: false
    t.integer "tentative_room_nights_8", default: 0, null: false
    t.integer "tentative_room_nights_9", default: 0, null: false
    t.integer "tentative_room_nights_10", default: 0, null: false
    t.integer "tentative_room_nights_11", default: 0, null: false
    t.integer "tentative_room_nights_12", default: 0, null: false
    t.integer "tentative_room_nights_total", default: 0, null: false
    t.integer "solicitation_attempts_1", default: 0, null: false
    t.integer "solicitation_attempts_2", default: 0, null: false
    t.integer "solicitation_attempts_3", default: 0, null: false
    t.integer "solicitation_attempts_4", default: 0, null: false
    t.integer "solicitation_attempts_5", default: 0, null: false
    t.integer "solicitation_attempts_6", default: 0, null: false
    t.integer "solicitation_attempts_7", default: 0, null: false
    t.integer "solicitation_attempts_8", default: 0, null: false
    t.integer "solicitation_attempts_9", default: 0, null: false
    t.integer "solicitation_attempts_10", default: 0, null: false
    t.integer "solicitation_attempts_11", default: 0, null: false
    t.integer "solicitation_attempts_12", default: 0, null: false
    t.integer "solicitation_attempts_total", default: 0, null: false
    t.integer "solicitation_connects_1", default: 0, null: false
    t.integer "solicitation_connects_2", default: 0, null: false
    t.integer "solicitation_connects_3", default: 0, null: false
    t.integer "solicitation_connects_4", default: 0, null: false
    t.integer "solicitation_connects_5", default: 0, null: false
    t.integer "solicitation_connects_6", default: 0, null: false
    t.integer "solicitation_connects_7", default: 0, null: false
    t.integer "solicitation_connects_8", default: 0, null: false
    t.integer "solicitation_connects_9", default: 0, null: false
    t.integer "solicitation_connects_10", default: 0, null: false
    t.integer "solicitation_connects_11", default: 0, null: false
    t.integer "solicitation_connects_12", default: 0, null: false
    t.integer "solicitation_connects_total", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["person_id"], name: "index_convention_sales_goals_on_person_id"
  end

  create_table "coupons", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.date "display_at"
    t.date "available_at"
    t.date "expire_at"
    t.boolean "leisure_coupon", default: false, null: false
    t.text "description"
    t.text "leisure_disclaimer"
    t.text "leisure_bar_code_uri"
    t.text "leisure_external_coupon_uri"
    t.boolean "convention_coupon", default: false, null: false
    t.text "convention_disclaimer"
    t.text "convention_bar_code_uri"
    t.text "convention_external_coupon_uri"
    t.boolean "hide_address", default: false, null: false
    t.boolean "hide_phone", default: false, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "sync_at", precision: nil
    t.text "shortcut_uri"
  end

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

  create_table "event_date_patterns", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "pattern", limit: 8
    t.date "start_at"
    t.date "end_at"
    t.integer "interval", default: 1, null: false
    t.string "week", limit: 8, default: "0"
    t.integer "start_time_hour", default: 0, null: false
    t.integer "start_time_minute", default: 0, null: false
    t.string "start_time_am_pm", limit: 2
    t.integer "end_time_hour", default: 0, null: false
    t.integer "end_time_minute", default: 0, null: false
    t.string "end_time_am_pm", limit: 2
    t.boolean "sunday", default: false, null: false
    t.boolean "monday", default: false, null: false
    t.boolean "tuesday", default: false, null: false
    t.boolean "wednesday", default: false, null: false
    t.boolean "thursday", default: false, null: false
    t.boolean "friday", default: false, null: false
    t.boolean "saturday", default: false, null: false
    t.date "exception_1_at"
    t.date "exception_2_at"
    t.date "exception_3_at"
    t.date "exception_4_at"
    t.integer "event_id", default: 0, null: false
    t.string "time_pattern", limit: 8
    t.string "day", limit: 16
    t.integer "day_of_month", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["event_id"], name: "index_event_date_patterns_on_event_id"
  end

  create_table "event_dates", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "event_id", default: 0, null: false
    t.date "event_at"
    t.string "event_times", limit: 128, null: false
    t.integer "event_date_pattern_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "sync_at", precision: nil
    t.index ["event_at"], name: "index_event_dates_on_event_at"
    t.index ["event_date_pattern_id"], name: "index_event_dates_on_event_date_pattern_id"
    t.index ["event_id"], name: "index_event_dates_on_event_id"
  end

  create_table "event_organization_connections", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "event_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "data_source_owner_id", limit: 32
  end

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

  create_table "expedia_availabilities", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.datetime "arrival_at", precision: nil
    t.string "rate_code", limit: 16
    t.string "room_type_code", limit: 16
    t.string "display_nightly_rate", limit: 16
    t.string "display_room_rate", limit: 16
    t.string "chargeable_room_rate_total", limit: 16
    t.string "native_room_rate", limit: 16
    t.string "current_allotment", limit: 16
    t.text "room_type_description"
    t.text "cancellation_policy"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "sync_at", precision: nil
    t.index ["parent_object_id", "room_type_code", "rate_code", "arrival_at"], name: "index_expedia_availabilities_multi_1"
  end

  create_table "expedia_bookings", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.date "check_in_at"
    t.date "check_out_at"
    t.string "hotel_id", limit: 32
    t.string "room_type", limit: 32
    t.string "rate_code", limit: 32
    t.string "key", limit: 128
    t.string "rooms", limit: 32
    t.string "session_id", limit: 128
    t.boolean "confirmed", default: false, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "expedia_room_types", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.string "room_type_id", limit: 16
    t.string "room_type_code", limit: 16
    t.text "description"
    t.text "long_description"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["parent_object_id"], name: "index_expedia_room_types_on_parent_object_id"
    t.index ["room_type_code"], name: "index_expedia_room_types_on_room_type_code"
  end

  create_table "extended_meeting_dates", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.integer "meeting_date_context_organization_id", default: 0, null: false
    t.integer "meeting_date_organization_id", default: 0, null: false
    t.integer "meeting_date_meeting_id", default: 0, null: false
    t.string "meeting_date_data_source_id", limit: 32
    t.integer "meeting_date_data_source_status", default: 0, null: false
    t.text "meeting_date_name"
    t.integer "meeting_date_created_by", default: 0, null: false
    t.integer "meeting_date_updated_by", default: 0, null: false
    t.datetime "meeting_date_created_at", precision: nil
    t.datetime "meeting_date_updated_at", precision: nil
    t.integer "meeting_date_meeting_status_id", default: 0, null: false
    t.string "meeting_date_meeting_status", limit: 64
    t.integer "meeting_date_data_source_status_2", default: 0, null: false
    t.text "meeting_date_status_note"
    t.date "meeting_date_status_note_updated_at"
    t.integer "meeting_date_sales_manager_id", default: 0, null: false
    t.string "meeting_date_sales_manager", limit: 64
    t.integer "meeting_date_services_manager_id", default: 0, null: false
    t.string "meeting_date_services_manager", limit: 64
    t.date "meeting_date_approval_original_issue_at"
    t.date "meeting_date_approval_request_at"
    t.date "meeting_date_approval_at"
    t.integer "meeting_date_approval_status", default: 0, null: false
    t.boolean "meeting_date_approval_held", default: false, null: false
    t.integer "meeting_date_response_to_id", default: 0, null: false
    t.string "meeting_date_response_to", limit: 64
    t.date "meeting_date_response_needed_at"
    t.date "meeting_date_definite_booking_at"
    t.integer "meeting_date_definite_booking_by_id", default: 0, null: false
    t.string "meeting_date_definite_booking_by", limit: 64
    t.date "meeting_date_tentative_booking_at"
    t.integer "meeting_date_tentative_booking_by_id", default: 0, null: false
    t.string "meeting_date_tentative_booking_by", limit: 64
    t.date "meeting_date_lost_booking_at"
    t.integer "meeting_date_lost_booking_by_id", default: 0, null: false
    t.string "meeting_date_lost_booking_by", limit: 64
    t.integer "meeting_date_lost_reason_1_id", default: 0, null: false
    t.string "meeting_date_lost_reason_1", limit: 64
    t.integer "meeting_date_lost_reason_2_id", default: 0, null: false
    t.string "meeting_date_lost_reason_2", limit: 64
    t.integer "meeting_date_lost_reason_3_id", default: 0, null: false
    t.string "meeting_date_lost_reason_3", limit: 64
    t.integer "meeting_date_lost_reason_4_id", default: 0, null: false
    t.string "meeting_date_lost_reason_4", limit: 64
    t.text "meeting_date_lost_reasons"
    t.text "meeting_date_all_lost_reasons"
    t.integer "meeting_date_contact_id", default: 0, null: false
    t.integer "meeting_date_headquarters_location_id", default: 0, null: false
    t.string "meeting_date_headquarters_location", limit: 64
    t.integer "meeting_date_decision_maker_id", default: 0, null: false
    t.string "meeting_date_decision_maker", limit: 64
    t.string "meeting_date_decision_maker_other", limit: 64
    t.date "meeting_date_decision_at"
    t.decimal "meeting_date_prospect_of_booking", precision: 12, scale: 2, default: "0.0"
    t.text "meeting_date_website"
    t.integer "meeting_date_meeting_scope_id", default: 0, null: false
    t.string "meeting_date_meeting_scope", limit: 64
    t.integer "meeting_date_lead_source_1_id", default: 0, null: false
    t.string "meeting_date_lead_source_1", limit: 64
    t.integer "meeting_date_attendance", default: 0, null: false
    t.integer "meeting_date_actual_attendance", default: 0, null: false
    t.decimal "meeting_date_economic_impact", precision: 12, scale: 2, default: "0.0"
    t.integer "meeting_date_competing_city_1_id", default: 0, null: false
    t.string "meeting_date_competing_city_1", limit: 64
    t.integer "meeting_date_competing_city_2_id", default: 0, null: false
    t.string "meeting_date_competing_city_2", limit: 64
    t.integer "meeting_date_competing_city_3_id", default: 0, null: false
    t.string "meeting_date_competing_city_3", limit: 64
    t.integer "meeting_date_competing_city_4_id", default: 0, null: false
    t.string "meeting_date_competing_city_4", limit: 64
    t.integer "meeting_date_competing_city_5_id", default: 0, null: false
    t.string "meeting_date_competing_city_5", limit: 64
    t.text "meeting_date_competing_cities"
    t.integer "meeting_date_host_city_id", default: 0, null: false
    t.string "meeting_date_host_city", limit: 64
    t.decimal "meeting_date_housing_percentage_one_bedded", precision: 12, scale: 2, default: "0.0"
    t.decimal "meeting_date_housing_percentage_two_bedded", precision: 12, scale: 2, default: "0.0"
    t.integer "meeting_date_housing_suite_count", default: 0, null: false
    t.integer "meeting_date_housing_by_id", default: 0, null: false
    t.string "meeting_date_housing_by", limit: 64
    t.boolean "meeting_date_housing_rate_net_rates", default: false, null: false
    t.boolean "meeting_date_housing_government_rates", default: false, null: false
    t.boolean "meeting_date_housing_fee", default: false, null: false
    t.decimal "meeting_date_housing_rate_requested_low", precision: 12, scale: 2, default: "0.0"
    t.decimal "meeting_date_housing_rate_requested_high", precision: 12, scale: 2, default: "0.0"
    t.integer "meeting_date_peak_rooms_blocked", default: 0, null: false
    t.integer "meeting_date_peak_rooms_picked_up", default: 0, null: false
    t.integer "meeting_date_peak_rooms_committed_1", default: 0, null: false
    t.integer "meeting_date_peak_rooms_committed_2", default: 0, null: false
    t.integer "meeting_date_peak_rooms_committed_3", default: 0, null: false
    t.integer "meeting_date_total_room_nights_blocked", default: 0, null: false
    t.integer "meeting_date_total_room_nights_picked_up", default: 0, null: false
    t.boolean "meeting_date_flexible_dates", default: false, null: false
    t.text "meeting_date_flexible_dates_note"
    t.integer "meeting_date_total_room_nights_previous", default: 0, null: false
    t.text "meeting_date_room_block_string"
    t.text "meeting_date_pick_up_string"
    t.date "meeting_date_meeting_1_at"
    t.date "meeting_date_meeting_2_at"
    t.date "meeting_date_meeting_3_at"
    t.integer "meeting_date_meeting_day_count", default: 0, null: false
    t.date "meeting_date_housing_1_at"
    t.date "meeting_date_housing_2_at"
    t.date "meeting_date_housing_3_at"
    t.integer "meeting_date_housing_day_count", default: 0, null: false
    t.date "meeting_date_pick_up_at"
    t.integer "meeting_date_pick_up_day_count", default: 0, null: false
    t.text "meeting_date_meeting_space_notes"
    t.text "meeting_date_meeting_space_food_and_beverage"
    t.boolean "meeting_date_single_property", default: false, null: false
    t.boolean "meeting_date_uses_convention_center", default: false, null: false
    t.date "meeting_date_move_in_1_at"
    t.date "meeting_date_move_in_2_at"
    t.date "meeting_date_move_in_3_at"
    t.integer "meeting_date_move_in_day_count", default: 0, null: false
    t.integer "meeting_date_exhibit_gsf", default: 0, null: false
    t.integer "meeting_date_exhibit_10x10_count", default: 0, null: false
    t.integer "meeting_date_exhibit_8x10_count", default: 0, null: false
    t.integer "meeting_date_exhibit_location_id", default: 0, null: false
    t.string "meeting_date_exhibit_location", limit: 64
    t.integer "meeting_date_largest_meeting_people_count", default: 0, null: false
    t.integer "meeting_date_breakout_room_count", default: 0, null: false
    t.integer "meeting_date_simultaneous_meetings_count", default: 0, null: false
    t.text "meeting_date_meeting_space_requirement_notes"
    t.integer "meeting_date_food_and_beverage_largest_function_people_count", default: 0, null: false
    t.integer "meeting_date_food_and_beverage_function_count", default: 0, null: false
    t.integer "meeting_date_food_and_beverage_simultaneous_function_count", default: 0, null: false
    t.decimal "meeting_date_food_and_beverage_historical_spending", precision: 12, scale: 2, default: "0.0"
    t.text "meeting_date_food_and_beverage_notes"
    t.date "meeting_date_meeting_space_grid_modified_at"
    t.date "meeting_date_meeting_space_grid_verified_at"
    t.integer "meeting_date_meeting_space_grid_verified_by", default: 0, null: false
    t.integer "meeting_date_meeting_space_grid_status", default: 0, null: false
    t.text "meeting_date_meeting_space_grid_notes"
    t.text "meeting_date_key_bid_element_notes"
    t.text "meeting_date_why_considered_notes"
    t.text "meeting_date_miscellaneous_notes"
    t.text "meeting_date_followup_instructions"
    t.text "meeting_date_decision_process_notes"
    t.text "meeting_date_revision_notes"
    t.text "meeting_date_internal_notes"
    t.boolean "meeting_date_hide_meeting_date", default: false, null: false
    t.text "meeting_date_web_display_name"
    t.text "meeting_date_web_display_date"
    t.text "meeting_date_web_housing_uri"
    t.text "meeting_date_web_housing_text"
    t.text "meeting_date_web_coupon_text"
    t.text "meeting_date_web_image_uri"
    t.text "meeting_date_web_shortcut_uri"
    t.string "meeting_date_headquarters_hotel_1", limit: 128
    t.string "meeting_date_headquarters_hotel_2", limit: 128
    t.date "meeting_date_rfp_issue_at"
    t.integer "organization_id", default: 0, null: false
    t.string "organization_name", limit: 255
    t.datetime "organization_created_at", precision: nil
    t.datetime "organization_updated_at", precision: nil
    t.string "organization_key", limit: 32
    t.integer "organization_parent_id", default: 0, null: false
    t.text "organization_secure_locations"
    t.boolean "organization_secure_with_ssl"
    t.integer "organization_created_by", default: 0, null: false
    t.integer "organization_updated_by", default: 0, null: false
    t.string "organization_data_source_id", limit: 32
    t.string "organization_sort_name", limit: 128
    t.string "organization_former_name", limit: 128
    t.string "organization_acronym", limit: 16
    t.string "organization_phone_main", limit: 64
    t.string "organization_phone_fax", limit: 64
    t.string "organization_phone_toll_free", limit: 64
    t.string "organization_expedia_id", limit: 32
    t.string "organization_passkey_id", limit: 32
    t.text "organization_website"
    t.string "organization_email", limit: 64
    t.string "organization_coordinates", limit: 64
    t.text "organization_keywords"
    t.string "organization_shortcut_uri", limit: 128
    t.string "organization_view_type", limit: 32
    t.text "organization_server_names"
    t.string "organization_default_layout", limit: 32
    t.string "organization_label", limit: 32
    t.string "organization_default_controller", limit: 128
    t.string "organization_default_action", limit: 128
    t.string "organization_unknown_controller", limit: 128
    t.string "organization_unknown_action", limit: 128
    t.string "organization_unknown_layout", limit: 32
    t.integer "organization_data_source_status", default: 0, null: false
    t.boolean "organization_hyphen_view_type", default: false, null: false
    t.datetime "organization_sync_at", precision: nil
    t.text "organization_image_uri"
    t.text "organization_meta_title"
    t.text "organization_meta_description"
    t.text "organization_meta_keywords"
    t.text "organization_meta_canonical_uri"
    t.string "organization_aci_organization_id", limit: 32
    t.string "organization_aci_venue_id", limit: 32
    t.integer "organization_context_organization_id", default: 0, null: false
    t.integer "organization_status", default: 0, null: false
    t.integer "meeting_id", default: 0, null: false
    t.integer "meeting_context_organization_id", default: 0, null: false
    t.integer "meeting_organization_id", default: 0, null: false
    t.string "meeting_data_source_id", limit: 32
    t.integer "meeting_data_source_status", default: 0, null: false
    t.text "meeting_name"
    t.date "meeting_qualified_at"
    t.integer "meeting_qualified_by", default: 0, null: false
    t.integer "meeting_qualified_by_author_id", default: 0, null: false
    t.integer "meeting_created_by", default: 0, null: false
    t.integer "meeting_updated_by", default: 0, null: false
    t.datetime "meeting_created_at", precision: nil
    t.datetime "meeting_updated_at", precision: nil
    t.text "meeting_description"
    t.integer "economic_impact_id", default: 0, null: false
    t.integer "economic_impact_context_organization_id", default: 0, null: false
    t.integer "economic_impact_meeting_date_id", default: 0, null: false
    t.integer "economic_impact_attendance_nights", default: 0, null: false
    t.decimal "economic_impact_average_rate", precision: 12, scale: 2, default: "0.0"
    t.integer "economic_impact_average_nightly_attendance", default: 0, null: false
    t.integer "economic_impact_calculated_gsf", default: 0, null: false
    t.decimal "economic_impact_calculated_people_per_room", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_net_income", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_net_spending_air_traffic", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_net_spending_entertainment", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_net_spending_food", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_net_spending_other", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_net_spending_room", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_net_spending_shopping", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_net_spending_ground_transportation", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_spending_air_traffic", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_spending_entertainment", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_spending_food", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_spending_other", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_spending_room", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_spending_shopping", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_spending_ground_transportation", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_event_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_with_induced", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_direct", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_direct_jobs", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_direct_va", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_direct_wages", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_indirect", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_indirect_jobs", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_indirect_va", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_indirect_wages", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_induced", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_induced_jobs", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_induced_va", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_impact_induced_wages", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_net_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_to_cib", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_to_cib_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_total_tax_to_cib_operations", precision: 12, scale: 2, default: "0.0"
    t.integer "economic_impact_created_by", default: 0, null: false
    t.integer "economic_impact_updated_by", default: 0, null: false
    t.datetime "economic_impact_created_at", precision: nil
    t.datetime "economic_impact_updated_at", precision: nil
    t.string "economic_impact_tax_1_label", limit: 64
    t.decimal "economic_impact_tax_1_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_1_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_1_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_1_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_1_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_1_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_1_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_1_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_1_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_1_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_2_label", limit: 64
    t.decimal "economic_impact_tax_2_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_2_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_2_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_2_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_2_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_2_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_2_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_2_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_2_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_2_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_3_label", limit: 64
    t.decimal "economic_impact_tax_3_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_3_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_3_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_3_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_3_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_3_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_3_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_3_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_3_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_3_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_4_label", limit: 64
    t.decimal "economic_impact_tax_4_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_4_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_4_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_4_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_4_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_4_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_4_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_4_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_4_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_4_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_5_label", limit: 64
    t.decimal "economic_impact_tax_5_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_5_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_5_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_5_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_5_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_5_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_5_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_5_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_5_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_5_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_6_label", limit: 64
    t.decimal "economic_impact_tax_6_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_6_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_6_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_6_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_6_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_6_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_6_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_6_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_6_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_6_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_7_label", limit: 64
    t.decimal "economic_impact_tax_7_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_7_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_7_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_7_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_7_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_7_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_7_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_7_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_7_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_7_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_8_label", limit: 64
    t.decimal "economic_impact_tax_8_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_8_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_8_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_8_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_8_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_8_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_8_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_8_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_8_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_8_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_9_label", limit: 64
    t.decimal "economic_impact_tax_9_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_9_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_9_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_9_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_9_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_9_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_9_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_9_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_9_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_9_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_10_label", limit: 64
    t.decimal "economic_impact_tax_10_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_10_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_10_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_10_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_10_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_10_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_10_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_10_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_10_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_10_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_11_label", limit: 64
    t.decimal "economic_impact_tax_11_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_11_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_11_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_11_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_11_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_11_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_11_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_11_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_11_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_11_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_12_label", limit: 64
    t.decimal "economic_impact_tax_12_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_12_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_12_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_12_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_12_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_12_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_12_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_12_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_12_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_12_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_13_label", limit: 64
    t.decimal "economic_impact_tax_13_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_13_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_13_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_13_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_13_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_13_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_13_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_13_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_13_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_13_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_14_label", limit: 64
    t.decimal "economic_impact_tax_14_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_14_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_14_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_14_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_14_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_14_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_14_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_14_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_14_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_14_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_15_label", limit: 64
    t.decimal "economic_impact_tax_15_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_15_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_15_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_15_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_15_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_15_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_15_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_15_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_15_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_15_total", precision: 12, scale: 2, default: "0.0"
    t.string "economic_impact_tax_16_label", limit: 64
    t.decimal "economic_impact_tax_16_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_16_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_16_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_16_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_16_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_16_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_16_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_16_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_16_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_tax_16_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_economic_attendance", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_percent_local_attendees", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_spending_air_traffic_lever", precision: 12, scale: 2, default: "0.0"
    t.text "economic_impact_spending_air_traffic_lever_note"
    t.decimal "economic_impact_spending_entertainment_lever", precision: 12, scale: 2, default: "0.0"
    t.text "economic_impact_spending_entertainment_lever_note"
    t.decimal "economic_impact_spending_food_lever", precision: 12, scale: 2, default: "0.0"
    t.text "economic_impact_spending_food_lever_note"
    t.decimal "economic_impact_spending_room_lever", precision: 12, scale: 2, default: "0.0"
    t.text "economic_impact_spending_room_lever_note"
    t.decimal "economic_impact_spending_shopping_lever", precision: 12, scale: 2, default: "0.0"
    t.text "economic_impact_spending_shopping_lever_note"
    t.decimal "economic_impact_spending_ground_transportation_lever", precision: 12, scale: 2, default: "0.0"
    t.text "economic_impact_spending_ground_transportation_lever_note"
    t.decimal "economic_impact_cc_adjustment_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_equipment_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_equipment_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_equipment_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_equipment_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_equipment_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_equipment_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_food_and_beverage_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_food_and_beverage_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_food_and_beverage_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_food_and_beverage_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_food_and_beverage_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_food_and_beverage_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_internet_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_internet_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_internet_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_internet_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_internet_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_internet_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_labor_reimbursement_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_labor_reimbursement_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_labor_reimbursement_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_labor_reimbursement_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_labor_reimbursement_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_labor_reimbursement_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_other_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_other_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_other_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_other_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_other_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_other_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_overhead_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_overhead_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_space_rental_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_space_rental_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_space_rental_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_space_rental_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_space_rental_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_space_rental_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_gross_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_net_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_net_revenue_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_net_revenue_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_net_revenue_per_gsf", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_net_revenue_per_gsf_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_utilities_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_utilities_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_utilities_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_utilities_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_utilities_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_utilities_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_impact_convention_operations_direct_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_impact_convention_operations_indirect_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_impact_convention_operations_induced_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_impact_convention_operations_jobs_total", precision: 12, scale: 2, default: "0.0"
    t.integer "economic_impact_calculated_gsf_all_space", default: 0, null: false
    t.integer "financial_commitment_id", default: 0, null: false
    t.integer "financial_commitment_context_organization_id", default: 0, null: false
    t.integer "financial_commitment_meeting_date_id", default: 0, null: false
    t.string "financial_commitment_data_source_id", limit: 32
    t.decimal "financial_commitment_financial_commitment_forecast", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_income_total_forecast", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_income_total_inside_forecast", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_income_total_inside_discounted", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_income_total_outside_forecast", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_income_assessment", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_income_assessment_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_income_assessment_description"
    t.decimal "financial_commitment_income_rebate", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_income_rebate_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_income_rebate_description"
    t.text "financial_commitment_income_commission", default: "0.0"
    t.decimal "financial_commitment_income_commission_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_income_commission_description"
    t.decimal "financial_commitment_income_other", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_income_other_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_income_other_description"
    t.decimal "financial_commitment_income_other_percent", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_income_other_percent_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_income_other_percent_description"
    t.decimal "financial_commitment_income_other_outside", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_income_other_outside_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_income_other_outside_description"
    t.text "financial_commitment_income_other_outside_percent", default: "0.0"
    t.decimal "financial_commitment_income_other_outside_percent_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_income_other_outside_percent_description"
    t.decimal "financial_commitment_expense_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_expense_total_inside", precision: 12, scale: 2, default: "0.0"
    t.decimal "financial_commitment_expense_total_outside", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_expense_total_description"
    t.decimal "financial_commitment_expense_space", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_expense_space_description"
    t.decimal "financial_commitment_expense_transportation", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_expense_transportation_description"
    t.decimal "financial_commitment_expense_sponsor_food", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_expense_sponsor_food_description"
    t.decimal "financial_commitment_expense_cash", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_expense_cash_description"
    t.decimal "financial_commitment_expense_other", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_expense_other_description"
    t.decimal "financial_commitment_expense_other_outside", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_expense_other_outside_description"
    t.integer "financial_commitment_created_by", default: 0, null: false
    t.integer "financial_commitment_updated_by", default: 0, null: false
    t.datetime "financial_commitment_created_at", precision: nil
    t.datetime "financial_commitment_updated_at", precision: nil
    t.text "financial_commitment_financial_commitment_note"
    t.string "organization_address1", limit: 128
    t.string "organization_address2", limit: 128
    t.string "organization_address3", limit: 128
    t.string "organization_city", limit: 64
    t.string "organization_state", limit: 32
    t.string "organization_zip", limit: 32
    t.string "organization_city_state_zip", limit: 128
    t.string "contact_specific_address1", limit: 128
    t.string "contact_specific_address2", limit: 128
    t.string "contact_specific_address3", limit: 128
    t.string "contact_specific_city", limit: 64
    t.string "contact_specific_state", limit: 32
    t.string "contact_specific_zip", limit: 32
    t.string "contact_specific_city_state_zip", limit: 128
    t.string "contact_address1", limit: 128
    t.string "contact_address2", limit: 128
    t.string "contact_address3", limit: 128
    t.string "contact_city", limit: 64
    t.string "contact_state", limit: 32
    t.string "contact_zip", limit: 32
    t.string "contact_city_state_zip", limit: 128
    t.string "contact_alternate_email", limit: 64
    t.date "contact_birthday_at"
    t.integer "contact_data_source_id", default: 0, null: false
    t.integer "contact_data_source_status", default: 0, null: false
    t.string "contact_email", limit: 64
    t.string "contact_encrypted_password", limit: 64
    t.text "contact_name"
    t.text "contact_name_first"
    t.text "contact_name_last"
    t.string "contact_name_middle", limit: 32
    t.string "contact_nickname", limit: 32
    t.string "contact_phone_home", limit: 64
    t.string "contact_phone_mobile", limit: 64
    t.string "contact_phone_work", limit: 64
    t.string "contact_title", limit: 128
    t.integer "contact_organization_id", default: 0, null: false
    t.string "contact_organization_name", limit: 255
    t.datetime "contact_organization_created_at", precision: nil
    t.datetime "contact_organization_updated_at", precision: nil
    t.string "contact_organization_key", limit: 32
    t.integer "contact_organization_parent_id", default: 0, null: false
    t.text "contact_organization_secure_locations"
    t.boolean "contact_organization_secure_with_ssl"
    t.integer "contact_organization_created_by", default: 0, null: false
    t.integer "contact_organization_updated_by", default: 0, null: false
    t.string "contact_organization_data_source_id", limit: 32
    t.string "contact_organization_sort_name", limit: 128
    t.string "contact_organization_former_name", limit: 128
    t.string "contact_organization_acronym", limit: 16
    t.string "contact_organization_phone_main", limit: 64
    t.string "contact_organization_phone_fax", limit: 64
    t.string "contact_organization_phone_toll_free", limit: 64
    t.string "contact_organization_expedia_id", limit: 32
    t.string "contact_organization_passkey_id", limit: 32
    t.text "contact_organization_website"
    t.string "contact_organization_email", limit: 64
    t.string "contact_organization_coordinates", limit: 64
    t.text "contact_organization_keywords"
    t.string "contact_organization_shortcut_uri", limit: 128
    t.string "contact_organization_view_type", limit: 32
    t.text "contact_organization_server_names"
    t.string "contact_organization_default_layout", limit: 32
    t.string "contact_organization_label", limit: 32
    t.string "contact_organization_default_controller", limit: 128
    t.string "contact_organization_default_action", limit: 128
    t.string "contact_organization_unknown_controller", limit: 128
    t.string "contact_organization_unknown_action", limit: 128
    t.string "contact_organization_unknown_layout", limit: 32
    t.integer "contact_organization_data_source_status", default: 0, null: false
    t.boolean "contact_organization_hyphen_view_type", default: false, null: false
    t.datetime "contact_organization_sync_at", precision: nil
    t.text "contact_organization_image_uri"
    t.text "contact_organization_meta_title"
    t.text "contact_organization_meta_description"
    t.text "contact_organization_meta_keywords"
    t.text "contact_organization_meta_canonical_uri"
    t.string "contact_organization_aci_organization_id", limit: 32
    t.string "contact_organization_aci_venue_id", limit: 32
    t.integer "contact_organization_context_organization_id", default: 0, null: false
    t.integer "contact_organization_status", default: 0, null: false
    t.string "contact_organization_address1", limit: 128
    t.string "contact_organization_address2", limit: 128
    t.string "contact_organization_address3", limit: 128
    t.string "contact_organization_city", limit: 64
    t.string "contact_organization_state", limit: 32
    t.string "contact_organization_zip", limit: 32
    t.string "contact_organization_city_state_zip", limit: 128
    t.integer "organization_county_id", default: 0, null: false
    t.integer "contact_organization_county_id", default: 0
    t.string "organization_cross_street_1", limit: 96
    t.string "organization_cross_street_2", limit: 96
    t.string "contact_organization_cross_street_1", limit: 96
    t.string "contact_organization_cross_street_2", limit: 96
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "meeting_date_definite_room_nights", default: 0, null: false
    t.integer "meeting_date_tentative_room_nights", default: 0, null: false
    t.integer "meeting_date_lost_room_nights", default: 0, null: false
    t.text "organization_comments"
    t.string "contact_phone_fax", limit: 64
    t.text "contact_organization_comments"
    t.boolean "meeting_date_hide_from_dashboard", default: false, null: false
    t.text "organization_temporary_image_uri"
    t.text "contact_organization_temporary_image_uri"
    t.integer "contact_courtesy_title_id", default: 0, null: false
    t.string "contact_salutation", limit: 64
    t.boolean "organization_umbrella", default: false
    t.boolean "contact_organization_umbrella", default: false
    t.boolean "organization_meta_disallow", default: false, null: false
    t.boolean "contact_organization_meta_disallow", default: false, null: false
    t.boolean "meeting_date_canceled", default: false, null: false
    t.boolean "organization_searchable", default: true, null: false
    t.boolean "contact_organization_searchable", default: true, null: false
    t.datetime "contact_organization_coordinates_updated_at", precision: nil
    t.datetime "organization_coordinates_updated_at", precision: nil
    t.string "meeting_data_source_owner_id", limit: 32
    t.string "meeting_date_data_source_owner_id", limit: 32
    t.string "organization_data_source_owner_id", limit: 32
    t.string "contact_data_source_owner_id", limit: 32
    t.string "contact_organization_data_source_owner_id", limit: 32
    t.boolean "meeting_date_hide_from_calendar", default: false, null: false
    t.integer "meeting_date_delegate_attendance", default: 0, null: false
    t.integer "meeting_date_public_attendance", default: 0, null: false
    t.string "organization_twitter_handle", limit: 32
    t.string "contact_organization_twitter_handle", limit: 32
    t.string "contact_address_name", limit: 255
    t.string "contact_organization_address_name", limit: 255
    t.string "contact_specific_address_name", limit: 255
    t.string "organization_address_name", limit: 255
    t.integer "meeting_date_type_id", default: 0, null: false
    t.decimal "economic_impact_cc_adjustment_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_direct_cost_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_net_revenue_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_net_revenue_operations_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_net_revenue_debt_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_total_net_net_revenue_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_overhead_direct_cost_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_impact_cc_overhead_direct_cost_difference", precision: 12, scale: 2, default: "0.0"
    t.text "economic_impact_cc_equipment_description"
    t.text "economic_impact_cc_food_and_beverage_description"
    t.text "economic_impact_cc_internet_description"
    t.text "economic_impact_cc_labor_reimbursement_description"
    t.text "economic_impact_cc_other_description"
    t.text "economic_impact_cc_space_rental_description"
    t.text "economic_impact_cc_utilities_description"
    t.text "organization_yelp_id"
    t.text "contact_organization_yelp_id"
    t.text "contact_organization_alternate_names"
    t.text "organization_alternate_names"
    t.string "organization_twitter_last_id", limit: 64
    t.string "contact_organization_twitter_last_id", limit: 64
    t.integer "meeting_date_spending_event_type_id", default: 0, null: false
    t.text "meeting_date_attendance_string"
    t.integer "meeting_date_total_attendance", default: 0, null: false
    t.integer "contact_approval_type_id", default: 0, null: false
    t.boolean "contact_use_parent_address", default: true
    t.boolean "contact_use_parent_shipping_address", default: true
    t.text "contact_email_signature"
    t.boolean "meeting_date_shared", default: false, null: false
    t.integer "meeting_date_peak_attendance", default: 0, null: false
    t.text "organization_tracking_content"
    t.text "contact_organization_tracking_content"
    t.date "organization_tracking_start_at"
    t.date "contact_organization_tracking_start_at"
    t.date "organization_tracking_end_at"
    t.date "contact_organization_tracking_end_at"
    t.integer "meeting_date_lead_source_2_id", default: 0, null: false
    t.integer "meeting_date_lead_source_3_id", default: 0, null: false
    t.string "meeting_date_lead_source_2", limit: 64
    t.string "meeting_date_lead_source_3", limit: 64
    t.integer "organization_ad_type_id", default: 0, null: false
    t.integer "contact_organization_ad_type_id", default: 0, null: false
    t.text "meeting_date_services_notes"
    t.text "contact_organization_yelp_api_id"
    t.text "organization_yelp_api_id"
    t.text "contact_organization_website_tiny_redirect"
    t.text "organization_website_tiny_redirect"
    t.index ["meeting_date_id"], name: "index_extended_meeting_dates_on_meeting_date_id"
  end

  create_table "facebook_registrations", id: :serial, force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "facebook_users", id: :serial, force: :cascade do |t|
    t.integer "facebook_id"
    t.string "session_key", limit: 255
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["facebook_id"], name: "index_facebook_users_on_facebook_id", unique: true
  end

  create_table "getaway_responses", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "getaway_id", limit: 64
    t.string "first_name", limit: 64
    t.string "last_name", limit: 64
    t.string "email", limit: 64
    t.string "zip", limit: 16
    t.text "answer"
    t.boolean "signup_for_win_in_indy", default: false, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "households", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "name", limit: 128
    t.integer "address_id", default: 0, null: false
    t.string "phone", limit: 32
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
  end

  create_table "housing_events", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.string "name", limit: 128
    t.boolean "include_in_date_search", default: false, null: false
    t.date "available_at"
    t.date "expire_at"
    t.string "splash_title", limit: 128
    t.string "splash_subtitle", limit: 128
    t.string "splash_tiny_title", limit: 48
    t.text "splash_disclaimer"
    t.date "event_starts_at"
    t.date "event_ends_at"
    t.string "gds_event_id", limit: 64
    t.string "gds_attendee_id", limit: 64
    t.boolean "gds_show_mns", default: false, null: false
    t.text "external_uri"
    t.text "external_description"
    t.string "image_uri", limit: 128
    t.string "shortcut_uri", limit: 32
    t.string "view_type", limit: 32
    t.text "meta_title"
    t.text "meta_description"
    t.text "meta_keywords"
    t.text "meta_canonical_uri"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.boolean "meta_disallow", default: false, null: false
    t.boolean "private_event", default: false, null: false
    t.text "splash_content"
    t.text "image_1_uri"
    t.text "image_2_uri"
    t.text "image_3_uri"
    t.text "image_4_uri"
  end

  create_table "housing_inventories", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "housing_event_id", default: 0, null: false
    t.string "expedia_id", limit: 32
    t.text "expedia_uri"
    t.string "room_rate_low", limit: 16
    t.string "room_rate_high", limit: 16
    t.decimal "distance_from_venue", precision: 12, scale: 2
    t.string "location_string", limit: 32
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "sync_at", precision: nil
  end

  create_table "list_makers", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.text "name"
    t.text "title"
    t.text "email"
    t.text "organization_name"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "tagmap_id", default: 0, null: false
    t.index ["person_id", "created_by"], name: "index_list_makers_on_person_id_and_created_by"
    t.index ["tagmap_id"], name: "index_list_makers_on_tagmap_id"
  end

  create_table "meeting_date_approvals", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.integer "approval_by", default: 0, null: false
    t.integer "approval_status", default: 0, null: false
    t.date "approval_at"
    t.integer "position", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["meeting_date_id"], name: "index_meeting_date_approvals_on_meeting_date_id"
  end

  create_table "meeting_date_configurations", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "property_name", limit: 64
    t.boolean "view", default: false, null: false
    t.integer "meeting_status_id", default: 0, null: false
    t.integer "approval_type_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "requirements_id", default: 0, null: false
  end

  create_table "meeting_date_economic_impacts", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.integer "attendance_nights", default: 0, null: false
    t.decimal "average_rate", precision: 12, scale: 2, default: "0.0"
    t.integer "average_nightly_attendance", default: 0, null: false
    t.integer "calculated_gsf", default: 0, null: false
    t.decimal "calculated_people_per_room", precision: 12, scale: 2, default: "0.0"
    t.decimal "net_income", precision: 12, scale: 2, default: "0.0"
    t.decimal "net_spending_air_traffic", precision: 12, scale: 2, default: "0.0"
    t.decimal "net_spending_entertainment", precision: 12, scale: 2, default: "0.0"
    t.decimal "net_spending_food", precision: 12, scale: 2, default: "0.0"
    t.decimal "net_spending_other", precision: 12, scale: 2, default: "0.0"
    t.decimal "net_spending_room", precision: 12, scale: 2, default: "0.0"
    t.decimal "net_spending_shopping", precision: 12, scale: 2, default: "0.0"
    t.decimal "net_spending_ground_transportation", precision: 12, scale: 2, default: "0.0"
    t.decimal "spending_air_traffic", precision: 12, scale: 2, default: "0.0"
    t.decimal "spending_entertainment", precision: 12, scale: 2, default: "0.0"
    t.decimal "spending_food", precision: 12, scale: 2, default: "0.0"
    t.decimal "spending_other", precision: 12, scale: 2, default: "0.0"
    t.decimal "spending_room", precision: 12, scale: 2, default: "0.0"
    t.decimal "spending_shopping", precision: 12, scale: 2, default: "0.0"
    t.decimal "spending_ground_transportation", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_event_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_with_induced", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_direct", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_direct_jobs", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_direct_va", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_direct_wages", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_indirect", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_indirect_jobs", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_indirect_va", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_indirect_wages", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_induced", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_induced_jobs", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_induced_va", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_impact_induced_wages", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_net_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_to_cib", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_to_cib_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "total_tax_to_cib_operations", precision: 12, scale: 2, default: "0.0"
    t.string "tax_1_label", limit: 64
    t.decimal "tax_1_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_1_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_1_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_1_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_1_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_1_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_1_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_1_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_1_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_1_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_2_label", limit: 64
    t.decimal "tax_2_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_2_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_2_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_2_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_2_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_2_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_2_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_2_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_2_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_2_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_3_label", limit: 64
    t.decimal "tax_3_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_3_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_3_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_3_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_3_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_3_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_3_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_3_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_3_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_3_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_4_label", limit: 64
    t.decimal "tax_4_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_4_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_4_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_4_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_4_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_4_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_4_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_4_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_4_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_4_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_5_label", limit: 64
    t.decimal "tax_5_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_5_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_5_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_5_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_5_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_5_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_5_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_5_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_5_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_5_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_6_label", limit: 64
    t.decimal "tax_6_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_6_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_6_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_6_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_6_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_6_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_6_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_6_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_6_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_6_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_7_label", limit: 64
    t.decimal "tax_7_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_7_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_7_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_7_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_7_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_7_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_7_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_7_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_7_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_7_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_8_label", limit: 64
    t.decimal "tax_8_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_8_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_8_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_8_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_8_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_8_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_8_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_8_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_8_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_8_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_9_label", limit: 64
    t.decimal "tax_9_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_9_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_9_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_9_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_9_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_9_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_9_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_9_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_9_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_9_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_10_label", limit: 64
    t.decimal "tax_10_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_10_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_10_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_10_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_10_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_10_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_10_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_10_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_10_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_10_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_11_label", limit: 64
    t.decimal "tax_11_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_11_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_11_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_11_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_11_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_11_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_11_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_11_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_11_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_11_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_12_label", limit: 64
    t.decimal "tax_12_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_12_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_12_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_12_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_12_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_12_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_12_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_12_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_12_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_12_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_13_label", limit: 64
    t.decimal "tax_13_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_13_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_13_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_13_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_13_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_13_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_13_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_13_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_13_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_13_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_14_label", limit: 64
    t.decimal "tax_14_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_14_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_14_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_14_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_14_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_14_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_14_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_14_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_14_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_14_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_15_label", limit: 64
    t.decimal "tax_15_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_15_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_15_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_15_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_15_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_15_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_15_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_15_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_15_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_15_total", precision: 12, scale: 2, default: "0.0"
    t.string "tax_16_label", limit: 64
    t.decimal "tax_16_entity_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_16_entity_1_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_16_entity_1_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_16_entity_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_16_spending", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_16_local", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_16_local_all", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_16_state", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_16_federal", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_16_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "economic_attendance", precision: 12, scale: 2, default: "0.0"
    t.decimal "percent_local_attendees", precision: 12, scale: 2, default: "0.0"
    t.decimal "spending_air_traffic_lever", precision: 12, scale: 2, default: "0.0"
    t.text "spending_air_traffic_lever_note"
    t.decimal "spending_entertainment_lever", precision: 12, scale: 2, default: "0.0"
    t.text "spending_entertainment_lever_note"
    t.decimal "spending_food_lever", precision: 12, scale: 2, default: "0.0"
    t.text "spending_food_lever_note"
    t.decimal "spending_room_lever", precision: 12, scale: 2, default: "0.0"
    t.text "spending_room_lever_note"
    t.decimal "spending_shopping_lever", precision: 12, scale: 2, default: "0.0"
    t.text "spending_shopping_lever_note"
    t.decimal "spending_ground_transportation_lever", precision: 12, scale: 2, default: "0.0"
    t.text "spending_ground_transportation_lever_note"
    t.decimal "cc_adjustment_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_equipment_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_equipment_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_equipment_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_equipment_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_equipment_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_equipment_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_food_and_beverage_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_food_and_beverage_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_food_and_beverage_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_food_and_beverage_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_food_and_beverage_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_food_and_beverage_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_internet_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_internet_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_internet_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_internet_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_internet_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_internet_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_labor_reimbursement_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_labor_reimbursement_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_labor_reimbursement_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_labor_reimbursement_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_labor_reimbursement_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_labor_reimbursement_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_other_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_other_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_other_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_other_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_other_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_other_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_overhead_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_overhead_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_space_rental_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_space_rental_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_space_rental_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_space_rental_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_space_rental_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_space_rental_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_gross_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_net_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_net_revenue_debt", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_net_revenue_operations", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_net_revenue_per_gsf", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_net_revenue_per_gsf_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_utilities_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_utilities_discount_1", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_utilities_discount_2", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_utilities_gross_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_utilities_net_revenue", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_utilities_standard_rate", precision: 12, scale: 2, default: "0.0"
    t.decimal "impact_convention_operations_direct_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "impact_convention_operations_indirect_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "impact_convention_operations_induced_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "impact_convention_operations_jobs_total", precision: 12, scale: 2, default: "0.0"
    t.integer "calculated_gsf_all_space", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.decimal "cc_adjustment_direct_cost", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_direct_cost_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_net_revenue_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_net_revenue_operations_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_net_revenue_debt_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_total_net_net_revenue_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_overhead_direct_cost_all_space", precision: 12, scale: 2, default: "0.0"
    t.decimal "cc_overhead_direct_cost_difference", precision: 12, scale: 2, default: "0.0"
    t.text "cc_equipment_description"
    t.text "cc_food_and_beverage_description"
    t.text "cc_internet_description"
    t.text "cc_labor_reimbursement_description"
    t.text "cc_other_description"
    t.text "cc_space_rental_description"
    t.text "cc_utilities_description"
    t.index ["meeting_date_id"], name: "index_economic_impacts_on_meeting_date_id"
  end

  create_table "meeting_date_financial_commitments", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.decimal "financial_commitment_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "financial_commitment_note"
    t.decimal "income_total_forecast", precision: 12, scale: 2, default: "0.0"
    t.decimal "income_total_inside_forecast", precision: 12, scale: 2, default: "0.0"
    t.decimal "income_total_inside_discounted", precision: 12, scale: 2, default: "0.0"
    t.decimal "income_total_outside_forecast", precision: 12, scale: 2, default: "0.0"
    t.decimal "income_assessment", precision: 12, scale: 2, default: "0.0"
    t.decimal "income_assessment_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "income_assessment_description"
    t.decimal "income_rebate", precision: 12, scale: 2, default: "0.0"
    t.decimal "income_rebate_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "income_rebate_description"
    t.text "income_commission", default: "0.0"
    t.decimal "income_commission_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "income_commission_description"
    t.decimal "income_other", precision: 12, scale: 2, default: "0.0"
    t.decimal "income_other_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "income_other_description"
    t.decimal "income_other_percent", precision: 12, scale: 2, default: "0.0"
    t.decimal "income_other_percent_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "income_other_percent_description"
    t.decimal "income_other_outside", precision: 12, scale: 2, default: "0.0"
    t.decimal "income_other_outside_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "income_other_outside_description"
    t.text "income_other_outside_percent", default: "0.0"
    t.decimal "income_other_outside_percent_forecast", precision: 12, scale: 2, default: "0.0"
    t.text "income_other_outside_percent_description"
    t.decimal "expense_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "expense_total_inside", precision: 12, scale: 2, default: "0.0"
    t.decimal "expense_total_outside", precision: 12, scale: 2, default: "0.0"
    t.text "expense_total_description"
    t.decimal "expense_space", precision: 12, scale: 2, default: "0.0"
    t.text "expense_space_description"
    t.decimal "expense_transportation", precision: 12, scale: 2, default: "0.0"
    t.text "expense_transportation_description"
    t.decimal "expense_sponsor_food", precision: 12, scale: 2, default: "0.0"
    t.text "expense_sponsor_food_description"
    t.decimal "expense_cash", precision: 12, scale: 2, default: "0.0"
    t.text "expense_cash_description"
    t.decimal "expense_other", precision: 12, scale: 2, default: "0.0"
    t.text "expense_other_description"
    t.decimal "expense_other_outside", precision: 12, scale: 2, default: "0.0"
    t.text "expense_other_outside_description"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["data_source_id"], name: "index_financials_on_data_source_id"
    t.index ["meeting_date_id"], name: "index_meeting_date_id"
  end

  create_table "meeting_date_group_tour_dates", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.date "tour_at"
    t.string "tour_time", limit: 32
    t.integer "tour_attendance", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "tour_guide_1_id", default: 0, null: false
    t.integer "tour_guide_2_id", default: 0, null: false
    t.integer "tour_guide_3_id", default: 0, null: false
    t.integer "tour_guide_4_id", default: 0, null: false
    t.integer "tour_type_id", default: 0, null: false
    t.text "notes"
    t.string "tiny_notes", limit: 64
    t.string "video_times", limit: 64
    t.date "due_at"
    t.decimal "deposit_amount", precision: 12, scale: 2, default: "0.0"
    t.decimal "balance_due", precision: 12, scale: 2, default: "0.0"
    t.date "guarantee_at"
  end

  create_table "meeting_date_meeting_space_status_logs", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.integer "meeting_space_grid_status", default: 0, null: false
    t.integer "verified_by", default: 0, null: false
    t.datetime "log_at", precision: nil
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["data_source_id"], name: "index_space_logs_on_data_source_id"
  end

  create_table "meeting_date_meeting_spaces", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.integer "meeting_space_id", default: 0, null: false
    t.text "assignments"
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["data_source_id"], name: "index_meeting_spaces_on_data_source_id"
  end

  create_table "meeting_date_response_rates", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_response_id", default: 0, null: false
    t.integer "position", default: 100, null: false
    t.date "signature_meeting_start_at"
    t.date "signature_meeting_end_at"
    t.integer "peak_rooms", default: 0, null: false
    t.integer "hold_option", default: 0, null: false
    t.decimal "room_rate_flat", precision: 12, scale: 2, default: "0.0"
    t.decimal "room_rate_1b1p", precision: 12, scale: 2, default: "0.0"
    t.decimal "room_rate_1b2p", precision: 12, scale: 2, default: "0.0"
    t.decimal "room_rate_2b2p", precision: 12, scale: 2, default: "0.0"
    t.decimal "room_rate_2b3p", precision: 12, scale: 2, default: "0.0"
    t.decimal "room_rate_2b4p", precision: 12, scale: 2, default: "0.0"
    t.decimal "room_rate_suite1b", precision: 12, scale: 2, default: "0.0"
    t.decimal "room_rate_suite2b", precision: 12, scale: 2, default: "0.0"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["meeting_date_response_id"], name: "index_response_rates_on_meeting_date_response_id"
  end

  create_table "meeting_date_response_status_logs", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_response_id", default: 0, null: false
    t.integer "approval_status", default: 0, null: false
    t.integer "approval_by", default: 0, null: false
    t.string "peak_rooms", limit: 32
    t.text "rate"
    t.datetime "log_at", precision: nil
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "date_range", limit: 80
    t.index ["data_source_id"], name: "index_response_logs_data_source_id"
    t.index ["meeting_date_response_id"], name: "index_response_logs_on_meeting_date_response_id"
  end

  create_table "meeting_date_responses", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "meeting_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.text "name"
    t.integer "accommodation_id", default: 0, null: false
    t.integer "approval_status", default: 0, null: false
    t.integer "approval_by", default: 0, null: false
    t.integer "approval_sales_manager_id", default: 0, null: false
    t.date "approval_requested_at"
    t.date "approval_updated_at"
    t.text "notes"
    t.text "flexible_date_notes"
    t.boolean "room_rate_guaranteed", default: false, null: false
    t.integer "room_rate_year", default: 0, null: false
    t.decimal "room_rate_max_increase", precision: 12, scale: 2, default: "0.0"
    t.string "complimentary_room_ratio", limit: 32
    t.boolean "income_assessment_approved", default: false, null: false
    t.boolean "income_rebate_approved", default: false, null: false
    t.boolean "income_commission_approved", default: false, null: false
    t.boolean "income_other_approved", default: false, null: false
    t.boolean "income_other_percent_approved", default: false, null: false
    t.boolean "income_other_outside_approved", default: false, null: false
    t.boolean "income_other_outside_percent_approved", default: false, null: false
    t.boolean "income_housing_fee_approved", default: false, null: false
    t.text "decline_reason"
    t.integer "decline_reason_1_id", default: 0, null: false
    t.integer "decline_reason_2_id", default: 0, null: false
    t.integer "decline_reason_3_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "data_source_owner_id", limit: 32
    t.boolean "selected", default: true, null: false
    t.index ["accommodation_id"], name: "index_meeting_date_responses_on_accommodation_id"
    t.index ["approval_status"], name: "index_meeting_date_responses_on_approval_status"
    t.index ["data_source_id"], name: "index_responses_on_data_source_id"
    t.index ["meeting_date_id"], name: "index_responses_on_meeting_date_id"
    t.index ["meeting_id"], name: "index_responses_on_meeting_id"
    t.index ["organization_id"], name: "index_responses_on_organization_id"
    t.index ["updated_at"], name: "index_meeting_date_responses_on_updated_at"
  end

  create_table "meeting_date_room_flows", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.string "room_flow_type", limit: 4
    t.integer "room_count", default: 0, null: false
    t.integer "position", default: 0, null: false
    t.date "room_flow_1_at"
    t.date "room_flow_2_at"
    t.date "room_flow_3_at"
    t.integer "room_flow_week_of_year_1", default: -1, null: false
    t.integer "room_flow_day_of_week_1", default: -1, null: false
    t.string "room_flow_week_and_day_1", limit: 8
    t.integer "room_flow_week_of_year_2", default: -1, null: false
    t.integer "room_flow_day_of_week_2", default: -1, null: false
    t.string "room_flow_week_and_day_2", limit: 8
    t.integer "room_flow_week_of_year_3", default: -1, null: false
    t.integer "room_flow_day_of_week_3", default: -1, null: false
    t.string "room_flow_week_and_day_3", limit: 8
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "sync_at", precision: nil
    t.index ["meeting_date_id"], name: "index_room_flows_on_meeting_date_id"
    t.index ["room_flow_week_and_day_1"], name: "index_room_flows_on_room_flow_week_and_day_1"
  end

  create_table "meeting_date_status_logs", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.integer "meeting_status_id", default: 0, null: false
    t.integer "sales_manager_id", default: 0, null: false
    t.string "log_type", limit: 4
    t.datetime "log_at", precision: nil
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["data_source_id"], name: "index_status_logs_on_data_source_id"
  end

  create_table "meeting_date_transactions", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "meeting_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.string "transaction_new_or_renewal", limit: 8, default: "N", null: false
    t.date "transaction_at"
    t.integer "room_nights", default: 0, null: false
    t.integer "meeting_status_id", default: 0, null: false
    t.integer "sales_manager_id", default: 0, null: false
    t.boolean "incentive", default: false, null: false
    t.text "description"
    t.integer "created_by", default: 0
    t.integer "updated_by", default: 0
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["data_source_id"], name: "index_meeting_date_transactions_on_data_source_id"
    t.index ["meeting_date_id"], name: "index_meeting_date_transactions_on_meeting_date_id"
    t.index ["organization_id"], name: "index_meeting_date_transactions_on_organization_id"
  end

  create_table "meeting_dates", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "meeting_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.text "name"
    t.integer "meeting_status_id", default: 0, null: false
    t.integer "data_source_status_2", default: 0, null: false
    t.text "status_note"
    t.date "status_note_updated_at"
    t.integer "sales_manager_id", default: 0, null: false
    t.integer "services_manager_id", default: 0, null: false
    t.date "approval_original_issue_at"
    t.date "approval_request_at"
    t.date "approval_at"
    t.integer "approval_status", default: 0, null: false
    t.boolean "approval_held", default: false, null: false
    t.integer "response_to_id", default: 0, null: false
    t.date "response_needed_at"
    t.date "definite_booking_at"
    t.integer "definite_booking_by_id", default: 0, null: false
    t.date "tentative_booking_at"
    t.integer "tentative_booking_by_id", default: 0, null: false
    t.date "lost_booking_at"
    t.integer "lost_booking_by_id", default: 0, null: false
    t.integer "lost_reason_1_id", default: 0, null: false
    t.integer "lost_reason_2_id", default: 0, null: false
    t.integer "lost_reason_3_id", default: 0, null: false
    t.integer "lost_reason_4_id", default: 0, null: false
    t.text "lost_reasons"
    t.integer "contact_id", default: 0, null: false
    t.integer "headquarters_location_id", default: 0, null: false
    t.integer "decision_maker_id", default: 0, null: false
    t.string "decision_maker_other", limit: 64
    t.date "decision_at"
    t.decimal "prospect_of_booking", precision: 12, scale: 2, default: "0.0"
    t.text "website"
    t.integer "meeting_scope_id", default: 0, null: false
    t.integer "lead_source_1_id", default: 0, null: false
    t.integer "attendance", default: 0, null: false
    t.integer "actual_attendance", default: 0, null: false
    t.decimal "economic_impact", precision: 12, scale: 2, default: "0.0"
    t.integer "competing_city_1_id", default: 0, null: false
    t.integer "competing_city_2_id", default: 0, null: false
    t.integer "competing_city_3_id", default: 0, null: false
    t.integer "competing_city_4_id", default: 0, null: false
    t.integer "competing_city_5_id", default: 0, null: false
    t.text "competing_cities"
    t.integer "host_city_id", default: 0, null: false
    t.decimal "housing_percentage_one_bedded", precision: 12, scale: 2, default: "0.0"
    t.decimal "housing_percentage_two_bedded", precision: 12, scale: 2, default: "0.0"
    t.integer "housing_suite_count", default: 0, null: false
    t.integer "housing_by_id", default: 0, null: false
    t.boolean "housing_rate_net_rates", default: false, null: false
    t.boolean "housing_government_rates", default: false, null: false
    t.boolean "housing_fee", default: false, null: false
    t.decimal "housing_rate_requested_low", precision: 12, scale: 2, default: "0.0"
    t.decimal "housing_rate_requested_high", precision: 12, scale: 2, default: "0.0"
    t.integer "peak_rooms_blocked", default: 0, null: false
    t.integer "peak_rooms_picked_up", default: 0, null: false
    t.integer "peak_rooms_committed_1", default: 0, null: false
    t.integer "peak_rooms_committed_2", default: 0, null: false
    t.integer "peak_rooms_committed_3", default: 0, null: false
    t.integer "total_room_nights_blocked", default: 0, null: false
    t.integer "total_room_nights_picked_up", default: 0, null: false
    t.boolean "flexible_dates", default: false, null: false
    t.text "flexible_dates_note"
    t.integer "total_room_nights_previous", default: 0, null: false
    t.text "room_block_string"
    t.text "pick_up_string"
    t.date "meeting_1_at"
    t.date "meeting_2_at"
    t.date "meeting_3_at"
    t.integer "meeting_day_count", default: 0, null: false
    t.date "housing_1_at"
    t.date "housing_2_at"
    t.date "housing_3_at"
    t.integer "housing_day_count", default: 0, null: false
    t.date "pick_up_at"
    t.integer "pick_up_day_count", default: 0, null: false
    t.text "meeting_space_notes"
    t.text "meeting_space_food_and_beverage"
    t.boolean "single_property", default: false, null: false
    t.boolean "uses_convention_center", default: false, null: false
    t.date "move_in_1_at"
    t.date "move_in_2_at"
    t.date "move_in_3_at"
    t.integer "move_in_day_count", default: 0, null: false
    t.integer "exhibit_gsf", default: 0, null: false
    t.integer "exhibit_10x10_count", default: 0, null: false
    t.integer "exhibit_8x10_count", default: 0, null: false
    t.integer "exhibit_location_id", default: 0, null: false
    t.integer "largest_meeting_people_count", default: 0, null: false
    t.integer "breakout_room_count", default: 0, null: false
    t.integer "simultaneous_meetings_count", default: 0, null: false
    t.text "meeting_space_requirement_notes"
    t.integer "food_and_beverage_largest_function_people_count", default: 0, null: false
    t.integer "food_and_beverage_function_count", default: 0, null: false
    t.integer "food_and_beverage_simultaneous_function_count", default: 0, null: false
    t.decimal "food_and_beverage_historical_spending", precision: 12, scale: 2, default: "0.0"
    t.text "food_and_beverage_notes"
    t.date "meeting_space_grid_modified_at"
    t.date "meeting_space_grid_verified_at"
    t.integer "meeting_space_grid_verified_by", default: 0, null: false
    t.integer "meeting_space_grid_status", default: 0, null: false
    t.text "meeting_space_grid_notes"
    t.text "key_bid_element_notes"
    t.text "why_considered_notes"
    t.text "miscellaneous_notes"
    t.text "followup_instructions"
    t.text "decision_process_notes"
    t.text "revision_notes"
    t.text "internal_notes"
    t.boolean "hide_meeting_date", default: false, null: false
    t.text "web_display_name"
    t.text "web_display_date"
    t.text "web_housing_uri"
    t.text "web_housing_text"
    t.text "web_coupon_text"
    t.text "web_image_uri"
    t.text "web_shortcut_uri"
    t.string "headquarters_hotel_1", limit: 128
    t.string "headquarters_hotel_2", limit: 128
    t.date "rfp_issue_at"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "definite_room_nights", default: 0, null: false
    t.integer "tentative_room_nights", default: 0, null: false
    t.integer "lost_room_nights", default: 0, null: false
    t.boolean "hide_from_dashboard", default: false, null: false
    t.boolean "canceled", default: false, null: false
    t.string "data_source_owner_id", limit: 32
    t.boolean "hide_from_calendar", default: false, null: false
    t.integer "delegate_attendance", default: 0, null: false
    t.integer "public_attendance", default: 0, null: false
    t.integer "type_id", default: 0, null: false
    t.integer "spending_event_type_id", default: 0, null: false
    t.text "attendance_string"
    t.integer "total_attendance", default: 0, null: false
    t.boolean "shared", default: false, null: false
    t.integer "peak_attendance", default: 0, null: false
    t.integer "lead_source_2_id", default: 0, null: false
    t.integer "lead_source_3_id", default: 0, null: false
    t.text "services_notes"
    t.index ["data_source_id"], name: "index_meeting_dates_on_data_source_id"
    t.index ["meeting_id"], name: "index_meeting_dates_on_meeting_id"
    t.index ["meeting_status_id"], name: "index_meeting_dates_meeting_status_id"
    t.index ["organization_id"], name: "index_meeting_dates_on_organization_id"
    t.index ["updated_at"], name: "index_meeting_dates_on_updated_at"
  end

  create_table "meeting_qualifications", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "meeting_id", default: 0, null: false
    t.integer "qualified_by", default: 0, null: false
    t.integer "qualified_by_author_id", default: 0, null: false
    t.date "qualified_at"
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "meetings", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.text "name"
    t.text "description"
    t.date "qualified_at"
    t.integer "qualified_by", default: 0, null: false
    t.integer "qualified_by_author_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "data_source_owner_id", limit: 32
    t.index ["data_source_id"], name: "index_meetings_on_data_source_id"
    t.index ["organization_id"], name: "index_meetings_on_organization_id"
  end

  create_table "monthly_occupancies", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "day", default: 0, null: false
    t.integer "month", default: 0, null: false
    t.integer "year", default: 0, null: false
    t.integer "week", default: 0, null: false
    t.decimal "occupancy", precision: 16, scale: 2, default: "0.0"
    t.decimal "occupancy_percentage_change", precision: 16, scale: 2, default: "0.0"
    t.bigint "adr", default: 0
    t.decimal "adr_percentage_change", precision: 16, scale: 2, default: "0.0"
    t.decimal "rev_par", precision: 16, scale: 2, default: "0.0"
    t.decimal "rev_par_percentage_change", precision: 16, scale: 2, default: "0.0"
    t.bigint "supply", default: 0, null: false
    t.decimal "supply_change", precision: 16, scale: 2, default: "0.0"
    t.bigint "demand", default: 0, null: false
    t.decimal "demand_percentage_change", precision: 16, scale: 2, default: "0.0"
    t.bigint "revenue", default: 0, null: false
    t.decimal "revenue_percentage_change", precision: 16, scale: 2, default: "0.0"
    t.bigint "census_property_count", default: 0, null: false
    t.bigint "census_room_count", default: 0, null: false
    t.decimal "census_percentage", precision: 16, scale: 2, default: "0.0"
    t.date "occupancy_at", null: false
    t.string "occupancy_at_string", limit: 16
    t.integer "occupancy_week_of_year", default: -1, null: false
    t.integer "occupancy_day_of_week", default: -1, null: false
    t.string "occupancy_week_and_day", limit: 8
    t.text "occupancy_label"
    t.decimal "group_occupancy", precision: 16, scale: 2, default: "0.0"
    t.decimal "group_adr", precision: 16, scale: 2, default: "0.0"
    t.decimal "group_rev_par", precision: 16, scale: 2, default: "0.0"
    t.bigint "group_demand", default: 0, null: false
    t.bigint "group_revenue", default: 0, null: false
    t.decimal "contract_occupancy", precision: 16, scale: 2, default: "0.0"
    t.decimal "contract_adr", precision: 16, scale: 2, default: "0.0"
    t.decimal "contract_rev_par", precision: 16, scale: 2, default: "0.0"
    t.bigint "contract_demand", default: 0, null: false
    t.bigint "contract_revenue", default: 0, null: false
    t.decimal "transient_occupancy", precision: 16, scale: 2, default: "0.0"
    t.decimal "transient_adr", precision: 16, scale: 2, default: "0.0"
    t.decimal "transient_rev_par", precision: 16, scale: 2, default: "0.0"
    t.bigint "transient_demand", default: 0, null: false
    t.bigint "transient_revenue", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "segment_id", default: 0, null: false
    t.index ["segment_id"], name: "index_monthly_occupancies_on_segment_id"
  end

  create_table "note_logs", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "note_id", default: 0, null: false
    t.integer "note_type_id", default: 0, null: false
    t.date "followup_needed_at"
    t.date "followup_completed_at"
    t.integer "followup_by_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["data_source_id"], name: "index_note_logs_on_data_source_id"
    t.index ["note_id"], name: "index_note_logs_on_note_id"
  end

  create_table "notes", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "note_type_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "product_id", default: 0, null: false
    t.integer "meeting_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.text "content"
    t.date "note_at"
    t.date "followup_needed_at"
    t.date "followup_completed_at"
    t.integer "followup_by_id", default: 0, null: false
    t.text "followup_content"
    t.integer "data_source_id", default: 0, null: false
    t.text "email_to"
    t.text "email_cc"
    t.text "email_bcc"
    t.text "email_from"
    t.text "email_subject"
    t.date "activity_at"
    t.boolean "hotel_viewable", default: false, null: false
    t.boolean "planner_viewable", default: false, null: false
    t.boolean "flagged", default: false, null: false
    t.text "html"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.decimal "score", precision: 12, scale: 2, default: "0.0", null: false
    t.string "data_source_owner_id", limit: 32
    t.integer "count_value", default: 0, null: false
    t.integer "author_id", default: 0, null: false
    t.index ["author_id"], name: "index_notes_on_author_id"
    t.index ["data_source_id"], name: "index_notes_on_data_source_id"
    t.index ["followup_by_id"], name: "index_notes_on_followup_by_id"
    t.index ["followup_needed_at"], name: "index_notes_on_followup_needed_at"
    t.index ["meeting_date_id"], name: "index_notes_on_meeting_date_id"
    t.index ["meeting_id"], name: "index_notes_on_meeting_id"
    t.index ["note_type_id", "created_by", "created_at"], name: "index_notes_for_reports_1"
    t.index ["note_type_id"], name: "index_notes_on_note_type_id"
    t.index ["organization_id"], name: "index_notes_on_organization_id"
    t.index ["person_id"], name: "index_notes_on_person_id"
    t.index ["product_id"], name: "index_notes_on_product_id"
  end

  create_table "occupancies", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "day", default: 0, null: false
    t.integer "month", default: 0, null: false
    t.integer "year", default: 0, null: false
    t.integer "week", default: 0, null: false
    t.decimal "occupancy", precision: 16, scale: 2, default: "0.0"
    t.decimal "occupancy_percentage_change", precision: 16, scale: 2, default: "0.0"
    t.bigint "adr", default: 0
    t.decimal "adr_percentage_change", precision: 16, scale: 2, default: "0.0"
    t.decimal "rev_par", precision: 16, scale: 2, default: "0.0"
    t.decimal "rev_par_percentage_change", precision: 16, scale: 2, default: "0.0"
    t.bigint "supply", default: 0, null: false
    t.decimal "supply_change", precision: 16, scale: 2, default: "0.0"
    t.bigint "demand", default: 0, null: false
    t.decimal "demand_percentage_change", precision: 16, scale: 2, default: "0.0"
    t.bigint "revenue", default: 0, null: false
    t.decimal "revenue_percentage_change", precision: 16, scale: 2, default: "0.0"
    t.bigint "census_property_count", default: 0, null: false
    t.bigint "census_room_count", default: 0, null: false
    t.decimal "census_percentage", precision: 16, scale: 2, default: "0.0"
    t.date "occupancy_at", null: false
    t.string "occupancy_at_string", limit: 16
    t.integer "occupancy_week_of_year", default: -1, null: false
    t.integer "occupancy_day_of_week", default: -1, null: false
    t.string "occupancy_week_and_day", limit: 8
    t.text "occupancy_label"
    t.decimal "group_occupancy", precision: 16, scale: 2, default: "0.0"
    t.decimal "group_adr", precision: 16, scale: 2, default: "0.0"
    t.decimal "group_rev_par", precision: 16, scale: 2, default: "0.0"
    t.bigint "group_demand", default: 0, null: false
    t.bigint "group_revenue", default: 0, null: false
    t.decimal "contract_occupancy", precision: 16, scale: 2, default: "0.0"
    t.decimal "contract_adr", precision: 16, scale: 2, default: "0.0"
    t.decimal "contract_rev_par", precision: 16, scale: 2, default: "0.0"
    t.bigint "contract_demand", default: 0, null: false
    t.bigint "contract_revenue", default: 0, null: false
    t.decimal "transient_occupancy", precision: 16, scale: 2, default: "0.0"
    t.decimal "transient_adr", precision: 16, scale: 2, default: "0.0"
    t.decimal "transient_rev_par", precision: 16, scale: 2, default: "0.0"
    t.bigint "transient_demand", default: 0, null: false
    t.bigint "transient_revenue", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "segment_id", default: 0, null: false
    t.index ["occupancy_at"], name: "index_occupancies_on_occupancy_at"
    t.index ["occupancy_label"], name: "index_occupancies_on_occupancy_label"
    t.index ["segment_id"], name: "index_occupancies_on_segment_id"
  end

  create_table "organization_person_connections", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "data_source_owner_id", limit: 32
    t.index ["organization_id"], name: "index_organization_id"
  end

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

  create_table "people", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.string "alternate_email", limit: 64
    t.date "birthday_at"
    t.boolean "citizen"
    t.integer "birth_location_id", default: 0, null: false
    t.string "drivers_license_id", limit: 32
    t.boolean "drivers_license_valid"
    t.string "nickname", limit: 32
    t.integer "number_people_in_household", default: 0, null: false
    t.string "other_id_issuer", limit: 32
    t.string "other_id_issuer_id", limit: 32
    t.string "phone_home", limit: 64
    t.string "phone_mobile", limit: 64
    t.string "phone_work", limit: 64
    t.integer "spouse_id", default: 0, null: false
    t.string "ssn", limit: 16
    t.boolean "veteran"
    t.string "emergency_contact_1", limit: 128
    t.string "emergency_contact_2", limit: 128
    t.string "emergency_contact_3", limit: 128
    t.string "emergency_contact_4", limit: 128
    t.integer "high_school_graduation_year", default: 0, null: false
    t.boolean "head_of_household"
    t.integer "household_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.string "exact_target_id", limit: 32
    t.boolean "exact_target_confirmed", default: false, null: false
    t.boolean "exact_target_needs_sync", default: false, null: false
    t.string "name_first", limit: 32
    t.string "name_middle", limit: 32
    t.string "name_last", limit: 32
    t.string "name", limit: 64
    t.string "encrypted_password", limit: 64
    t.string "email", limit: 64
    t.boolean "superuser", default: false, null: false
    t.string "time_zone", limit: 64
    t.integer "gender_id", default: 0, null: false
    t.integer "ethnicity_id", default: 0, null: false
    t.integer "marital_status_id", default: 0, null: false
    t.date "activation_at"
    t.integer "activation_author_id", default: 0, null: false
    t.text "activation_message"
    t.string "activations", limit: 32
    t.string "title", limit: 128
    t.integer "organization_id", default: 0, null: false
    t.integer "view_type_id", default: 0, null: false
    t.integer "supplier_position_id", default: 0, null: false
    t.text "personal_information"
    t.integer "personal_interest_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "password_hash", limit: 128
    t.string "password_salt", limit: 128
    t.string "phone_fax", limit: 64
    t.string "phone_direct", limit: 64
    t.string "phone_toll_free", limit: 64
    t.string "phone_tdd", limit: 64
    t.integer "privilege_id", default: 0, null: false
    t.integer "courtesy_title_id", default: 0, null: false
    t.string "salutation", limit: 64
    t.string "data_source_owner_id", limit: 32
    t.text "website"
    t.string "twitter_handle", limit: 32
    t.text "image_uri"
    t.text "blog_image_uri"
    t.text "blog_bio"
    t.text "blog_shortcut_uri"
    t.text "tiny_personal_information"
    t.string "preference_email_delimiter", limit: 8
    t.text "blog_short_bio"
    t.integer "approval_type_id", default: 0, null: false
    t.boolean "use_parent_address", default: true
    t.boolean "use_parent_shipping_address", default: true
    t.text "email_signature"
    t.integer "report_audience_id", default: 0, null: false
    t.integer "birthday_month", default: 0, null: false
    t.integer "birthday_day", default: 0, null: false
    t.boolean "birthday_needs_sync", default: false, null: false
    t.integer "birthday_person_id", default: 0, null: false
    t.index ["approval_type_id"], name: "index_approval_type_id"
    t.index ["data_source_id"], name: "index_people_on_data_source_id"
    t.index ["organization_id"], name: "index_people_on_organization_id"
    t.index ["person_id"], name: "index_people_on_person_id"
  end

  create_table "person_attendance_records", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "status", default: 0, null: false
    t.date "attendance_at"
    t.integer "tagmap_id", default: 0, null: false
    t.integer "points", default: 0, null: false
    t.text "point_ids"
    t.integer "adjustment", default: 0, null: false
    t.string "adjustment_note", limit: 32
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["person_id"], name: "index_attendance_records_on_person_id"
  end

  create_table "person_clinic_records", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "status", default: 0, null: false
    t.datetime "visit_at", precision: nil
    t.integer "age_group_id", default: 0, null: false
    t.integer "ethnicity_id", default: 0, null: false
    t.text "ongoing_conditions"
    t.text "chief_complaint"
    t.text "diagnosis"
    t.integer "doctor_id", default: 0, null: false
    t.text "lab_work"
    t.text "follow_up"
    t.integer "referral_id", default: 0, null: false
    t.integer "weight", default: 0, null: false
    t.integer "tobacco", default: 0, null: false
    t.integer "insurance_id", default: 0, null: false
    t.text "pcp_name"
    t.text "pcp_location"
    t.text "other_treatment"
    t.text "other_medication"
    t.text "referral_comments"
    t.text "insurance_comments"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["person_id"], name: "index_clinic_records_on_person_id"
  end

  create_table "person_education_records", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.boolean "high_school_graduate"
    t.datetime "college_started_at", precision: nil
    t.datetime "college_ended_at", precision: nil
    t.string "college_course_of_study", limit: 64
    t.integer "high_school_graduation_year", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["person_id"], name: "index_education_records_on_person_id"
  end

  create_table "person_employment_records", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.boolean "currently_employed"
    t.boolean "need_job"
    t.boolean "need_short_term_job"
    t.boolean "need_career_change"
    t.boolean "job_training"
    t.datetime "job_training_at", precision: nil
    t.boolean "ever_convicted_of_misdemeanor"
    t.text "ever_convicted_of_misdemeanor_comments"
    t.boolean "ever_convicted_of_felony"
    t.text "ever_convicted_of_felony_comments"
    t.boolean "ever_on_probation_or_home_detention"
    t.boolean "ever_been_fired"
    t.text "ever_been_fired_comments"
    t.boolean "physical_impairments"
    t.text "physical_impairments_comments"
    t.boolean "in_substance_abuse_program"
    t.datetime "last_drug_test_at", precision: nil
    t.boolean "schedule_problems_or_restrictions"
    t.text "schedule_problems_or_restrictions_comments"
    t.boolean "shift_preference_1"
    t.boolean "shift_preference_2"
    t.boolean "shift_preference_3"
    t.boolean "day_not_available_sunday"
    t.boolean "day_not_available_monday"
    t.boolean "day_not_available_tuesday"
    t.boolean "day_not_available_wednesday"
    t.boolean "day_not_available_thursday"
    t.boolean "day_not_available_friday"
    t.boolean "day_not_available_saturday"
    t.decimal "expected_hourly_rate", precision: 8, scale: 2
    t.boolean "resume_current"
    t.text "why_enrolled"
    t.text "how_to_help_with_job_search"
    t.text "other_skills"
    t.boolean "have_transportation_money_until_first_paycheck"
    t.boolean "have_appropriate_clothes"
    t.text "employment_history_1"
    t.text "employment_history_2"
    t.text "employment_history_3"
    t.text "employment_history_4"
    t.text "employment_history_5"
    t.text "employment_history_6"
    t.text "reference_1"
    t.text "reference_2"
    t.text "reference_3"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["person_id"], name: "index_employment_records_on_person_id"
  end

  create_table "person_financial_records", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.decimal "income_total", precision: 8, scale: 2
    t.decimal "income_child_support_in_arrears", precision: 8, scale: 2
    t.text "income_comments"
    t.string "expense_other_1", limit: 32
    t.decimal "expense_other_amount_1", precision: 8, scale: 2
    t.string "expense_other_2", limit: 32
    t.decimal "expense_other_amount_2", precision: 8, scale: 2
    t.string "expense_other_3", limit: 32
    t.decimal "expense_other_amount_3", precision: 8, scale: 2
    t.string "expense_other_4", limit: 32
    t.decimal "expense_other_amount_4", precision: 8, scale: 2
    t.decimal "expense_total", precision: 8, scale: 2
    t.text "expense_comments"
    t.datetime "housing_current_address_started_at", precision: nil
    t.datetime "housing_previous_address_started_at", precision: nil
    t.datetime "housing_previous_address_ended_at", precision: nil
    t.datetime "housing_second_previous_address_started_at", precision: nil
    t.datetime "housing_second_previous_address_ended_at", precision: nil
    t.boolean "housing_ever_evicted"
    t.text "housing_ever_evicted_comments"
    t.boolean "housing_owe_landloard"
    t.decimal "housing_owe_landlord_how_much", precision: 8, scale: 2
    t.boolean "housing_owe_utilities"
    t.decimal "housing_owe_utilities_how_much", precision: 8, scale: 2
    t.decimal "housing_how_much_can_afford", precision: 8, scale: 2
    t.datetime "housing_needed_at", precision: nil
    t.text "housing_comments"
    t.string "housing_previous_address", limit: 128
    t.string "housing_second_previous_address", limit: 128
    t.text "debt_comments"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["person_id"], name: "index_financial_records_on_person_id"
  end

  create_table "person_health_records", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["person_id"], name: "index_health_records_on_person_id"
  end

  create_table "person_mentoring_plans", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.date "plan_at"
    t.text "goal_1"
    t.text "goal_1_actions"
    t.text "goal_1_expected_outcomes"
    t.text "goal_1_timeline"
    t.integer "goal_1_completion_id", default: 0, null: false
    t.text "goal_2"
    t.text "goal_2_actions"
    t.text "goal_2_expected_outcomes"
    t.text "goal_2_timeline"
    t.integer "goal_2_completion_id", default: 0, null: false
    t.text "goal_3"
    t.text "goal_3_actions"
    t.text "goal_3_expected_outcomes"
    t.text "goal_3_timeline"
    t.integer "goal_3_completion_id", default: 0, null: false
    t.date "progress_to_be_completed_at"
    t.date "progress_at"
    t.text "progress"
    t.date "review_to_be_completed_at"
    t.date "review_at"
    t.text "review_mentee_comments"
    t.date "review_mentee_comments_at"
    t.text "review_mentor_comments"
    t.date "review_mentor_comments_at"
    t.text "review_staff_comments"
    t.date "review_staff_comments_at"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "person_mentoring_records", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.date "interview_at"
    t.date "enrollment_at"
    t.date "match_at"
    t.date "closure_at"
    t.date "referral_at"
    t.boolean "parent_guidelines_form", default: false, null: false
    t.boolean "parent_consent_forms", default: false, null: false
    t.string "mentor_name", limit: 64
    t.text "notes"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "person_metrics", id: :serial, force: :cascade do |t|
    t.integer "person_id", default: 0, null: false
    t.integer "context_organization_id", default: 0, null: false
    t.date "metrics_at"
    t.text "answers"
    t.text "comments"
    t.integer "survey_id", default: 0, null: false
    t.text "scores"
    t.text "analyzed_scores"
    t.string "composite_score", limit: 32
    t.string "composite_analyzed_score", limit: 32
    t.string "score", limit: 32
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["person_id"], name: "index_metrics_on_person_id"
  end

  create_table "person_student_assessments", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.datetime "assessment_at", precision: nil
    t.text "vision_goal"
    t.text "vision_description"
    t.text "vision_plan"
    t.text "vision_obstacles"
    t.text "vision_status"
    t.text "vision_comments"
    t.text "salvation_comments"
    t.text "education_comments"
    t.integer "attitude_id", default: 0, null: false
    t.integer "score", default: 0, null: false
    t.integer "attendance_id", default: 0, null: false
    t.integer "vision", default: 0, null: false
    t.integer "english_grades_id", default: 0, null: false
    t.integer "math_grades_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["person_id"], name: "index_student_assessments_on_person_id"
  end

  create_table "person_student_registrations", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.boolean "drop_off"
    t.string "authorized_for_pickup_1", limit: 128
    t.string "authorized_for_pickup_2", limit: 128
    t.string "authorized_for_pickup_3", limit: 128
    t.string "authorized_for_pickup_4", limit: 128
    t.string "doctor_name", limit: 64
    t.string "doctor_phone", limit: 32
    t.string "hospital_preference", limit: 64
    t.text "current_prescriptions"
    t.text "operations_or_serious_injuries"
    t.text "chronic_medical_problem"
    t.text "special_needs"
    t.integer "insurance_id", default: 0, null: false
    t.string "insurance_name", limit: 128
    t.string "insurance_policy_number", limit: 64
    t.datetime "student_record_authorization_at", precision: nil
    t.string "student_record_authorization_by", limit: 64
    t.datetime "media_authorization_at", precision: nil
    t.string "media_authorization_by", limit: 64
    t.datetime "transportation_authorization_at", precision: nil
    t.string "transportation_authorization_by", limit: 64
    t.text "allergies_comments"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["person_id"], name: "index_student_registrations_on_person_id"
  end

  create_table "privileges", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "tagmap_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.boolean "can_create", default: false, null: false
    t.boolean "can_read", default: false, null: false
    t.boolean "can_update", default: false, null: false
    t.boolean "can_delete", default: false, null: false
    t.boolean "can_see", default: false, null: false
    t.boolean "can_admin", default: false, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["parent_object_id"], name: "index_privileges_on_parent_object_id"
  end

  create_table "products", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "status", default: 0, null: false
    t.string "name", limit: 128
    t.text "description"
    t.string "new_accounting_id", limit: 32
    t.string "renewal_accounting_id", limit: 32
    t.date "available_at"
    t.date "expire_at"
    t.integer "description_product_id", default: 0, null: false
    t.integer "billing_frequency", default: 0, null: false
    t.decimal "billing_amount", precision: 12, scale: 2, default: "0.0"
    t.decimal "annual_cost", precision: 12, scale: 2, default: "0.0"
    t.boolean "incentive", default: false, null: false
    t.boolean "web_managed_product", default: false, null: false
    t.boolean "web_activation_product", default: false, null: false
    t.string "exact_target_list_id", limit: 64
    t.string "exact_target_email_id", limit: 64
    t.string "exact_target_email_name", limit: 64
    t.string "exact_target_email_address", limit: 64
    t.integer "audience", default: 1, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "label", limit: 96
    t.boolean "synchronized", default: false, null: false
    t.index ["data_source_id"], name: "index_products_on_data_source_id"
    t.index ["label"], name: "index_products_on_label"
  end

  create_table "project_tasks", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "project_id", default: 0, null: false
    t.string "name", limit: 64
    t.text "description"
    t.integer "skill_id", default: 0, null: false
    t.integer "number_of_people_needed", default: 0, null: false
    t.integer "length_of_project_in_days", default: 0, null: false
    t.decimal "cost", precision: 10, scale: 2, default: "0.0"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "projects", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "project_group_id", default: 0, null: false
    t.string "name", limit: 64
    t.text "description"
    t.date "started_at"
    t.date "ended_at"
    t.decimal "cost", precision: 10, scale: 2, default: "0.0"
    t.integer "number_of_people_needed", default: 0, null: false
    t.text "tasks_needed"
    t.text "skills_needed"
    t.text "equipment_needed"
    t.integer "organization_assigned_id", default: 0, null: false
    t.integer "organization_contact_id", default: 0, null: false
    t.date "organization_signed_up_at"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

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

  create_table "referral_organizations", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "referral_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "response_by", default: 0, null: false
    t.text "response"
    t.date "response_updated_at"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "referrals", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.integer "services_manager_id", default: 0, null: false
    t.text "title"
    t.text "description"
    t.date "response_needed_at"
    t.boolean "referral", default: false, null: false
    t.boolean "lead", default: false, null: false
    t.text "rfp_uri"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "sent_at", precision: nil
  end

  create_table "report_properties", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "report_id", default: 0, null: false
    t.string "name", limit: 128, null: false
    t.integer "position", default: 0, null: false
    t.integer "parameter_type", default: 0, null: false
    t.text "parameter_value"
    t.text "parameter_value_end"
    t.text "parameter_value_ids"
    t.integer "style_type", default: 0, null: false
    t.text "style_value"
    t.boolean "required", default: false, null: false
    t.boolean "combined", default: false, null: false
    t.boolean "grouped", default: false, null: false
    t.boolean "hidden", default: false, null: false
    t.integer "horizontal_alignment", default: 0, null: false
    t.integer "vertical_alignment", default: 0, null: false
    t.boolean "wrap_text", default: false, null: false
    t.integer "font_color", default: 0, null: false
    t.integer "background_color", default: 0, null: false
    t.integer "font_name", default: 0, null: false
    t.integer "font_style", default: 0, null: false
    t.integer "font_size", default: 0, null: false
    t.string "column_width", limit: 16
    t.integer "created_by", default: 0
    t.integer "updated_by", default: 0
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.boolean "constant", default: false
  end

  create_table "reports", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "name", limit: 64, null: false
    t.string "primary_table_name", limit: 64
    t.integer "created_by", default: 0
    t.integer "updated_by", default: 0
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.text "canned_report_uri"
    t.text "canned_report_sql"
    t.text "custom_report_name"
    t.boolean "link_opens_new_window", default: false, null: false
  end

  create_table "resources", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "title", limit: 128
    t.integer "position", default: 100, null: false
    t.boolean "public"
    t.integer "parent_object_id", default: 0, null: false
    t.string "content_type", limit: 32
    t.string "filename", limit: 128
    t.string "thumbnail", limit: 128
    t.integer "size", default: 0, null: false
    t.integer "width", default: 0, null: false
    t.integer "height", default: 0, null: false
    t.text "uri"
    t.text "uri_thumb"
    t.string "parent_object_type", limit: 32
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.text "uri_compressed"
    t.text "description"
    t.text "keywords"
    t.integer "status", default: 0, null: false
    t.text "upload_file_name"
    t.string "upload_content_type", limit: 32
    t.integer "upload_file_size"
    t.datetime "upload_updated_at", precision: nil
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["data_source_id"], name: "index_resources_on_data_source_id"
    t.index ["parent_object_id"], name: "index_resources_on_parent_object_id"
  end

  create_table "revisions", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32, null: false
    t.string "name", limit: 64
    t.integer "revised_by", default: 0, null: false
    t.datetime "revised_at", precision: nil
    t.string "revision_type", limit: 4, default: "X", null: false
    t.text "revision_to"
    t.index ["data_source_id"], name: "index_revisions_on_data_source_id"
    t.index ["parent_object_id", "parent_object_type"], name: "index_revisions_on_parent_object"
  end

  create_table "serialized_objects", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "name", limit: 128
    t.text "serialized_value"
    t.string "serialized_type", limit: 64
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["name"], name: "index_serialized_objects_on_name"
  end

  create_table "shortcut_uris", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.text "shortcut_uri"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["parent_object_id", "parent_object_type"], name: "index_shortcut_uris_on_parent_object_id_and_parent_object_type"
    t.index ["shortcut_uri"], name: "index_shortcut_uris_on_shortcut_uri"
  end

  create_table "small_group_person_connections", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "small_group_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "small_groups", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "name", limit: 128
    t.integer "status_id", default: 0, null: false
    t.datetime "started_at", precision: nil
    t.integer "coach_id", default: 0, null: false
    t.integer "primary_leader_1_id", default: 0, null: false
    t.integer "primary_leader_2_id", default: 0, null: false
    t.integer "secondary_leader_1_id", default: 0, null: false
    t.integer "secondary_leader_2_id", default: 0, null: false
    t.integer "group_type_id", default: 0, null: false
    t.text "group_type_comments"
    t.integer "size_id", default: 0, null: false
    t.integer "gender_id", default: 0, null: false
    t.integer "marriage_status_id", default: 0, null: false
    t.integer "age_id", default: 0, null: false
    t.integer "children_id", default: 0, null: false
    t.text "children_comments"
    t.string "topic", limit: 128
    t.integer "growth_id", default: 0, null: false
    t.integer "day_id", default: 0, null: false
    t.string "time", limit: 64
    t.integer "location_id", default: 0, null: false
    t.integer "demographic_id", default: 0, null: false
    t.boolean "childcare", default: false, null: false
    t.integer "time_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "smiley_faces", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "meeting_date_id", default: 0, null: false
    t.datetime "smiley_face_at", precision: nil
    t.string "color", limit: 8
    t.text "note"
    t.integer "created_by", default: 0
    t.integer "updated_by", default: 0
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "sport_facilities", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "sport_id", default: 0, null: false
    t.text "description"
    t.string "field_count", limit: 32
    t.string "field_lighted_count", limit: 32
    t.string "field_width", limit: 32
    t.string "field_length", limit: 32
    t.string "field_turf", limit: 32
    t.string "field_irrigated_count", limit: 32
    t.string "field_infield_turf", limit: 32
    t.string "field_outfield_length", limit: 32
    t.string "field_mound", limit: 32
    t.string "score_board_count", limit: 32
    t.string "spectator_seating", limit: 32
    t.string "pressbox", limit: 32
    t.string "parking_capacity", limit: 32
    t.string "washrooms", limit: 32
    t.string "concessions", limit: 32
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "subscription_status_logs", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "subscription_id", default: 0, null: false
    t.datetime "log_at", precision: nil
    t.integer "log_by", default: 0, null: false
    t.integer "status", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["data_source_id"], name: "index_subscription_logs_on_data_source_id"
    t.index ["subscription_id"], name: "index_subscription_logs_on_subscription_id"
  end

  create_table "subscription_transactions", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.integer "product_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "transaction_type", default: 0, null: false
    t.string "transaction_new_or_renewal", limit: 8, default: "N", null: false
    t.date "transaction_at"
    t.decimal "transaction_amount", precision: 12, scale: 2, default: "0.0"
    t.integer "sales_manager_id", default: 0, null: false
    t.boolean "incentive", default: false, null: false
    t.string "invoice_number", limit: 64
    t.string "accounting_id", limit: 64
    t.integer "billing_frequency", default: 0, null: false
    t.integer "publication_component_type_id", default: 0, null: false
    t.integer "publication_section_id", default: 0, null: false
    t.text "description"
    t.integer "created_by", default: 0
    t.integer "updated_by", default: 0
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["data_source_id"], name: "index_subscription_transactions_on_data_source_id"
    t.index ["organization_id"], name: "index_subscription_transactions_on_organization_id"
    t.index ["product_id"], name: "index_subscription_transactions_on_product_id"
  end

  create_table "subscriptions", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "status", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32, null: false
    t.integer "product_id", default: 0, null: false
    t.integer "content_id", default: 0, null: false
    t.integer "sales_manager_id", default: 0, null: false
    t.text "description"
    t.text "extended_description"
    t.text "planner_description"
    t.date "started_at"
    t.date "renewed_at"
    t.date "expire_at"
    t.integer "billing_frequency", default: 0, null: false
    t.decimal "billing_amount", precision: 12, scale: 2, default: "0.0"
    t.decimal "last_payment_amount", precision: 12, scale: 2, default: "0.0"
    t.date "last_payment_at"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.text "group_tour_description"
    t.text "abstract"
    t.text "points"
    t.text "planner_image_uri"
    t.index ["data_source_id"], name: "index_subscriptions_on_data_source_id"
    t.index ["parent_object_id", "parent_object_type"], name: "index_subscriptions_on_parent_object"
    t.index ["product_id"], name: "index_subscriptions_on_product_id"
  end

  create_table "supplier_organizations", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.string "expedia_id", limit: 32
    t.string "passkey_id", limit: 32
    t.string "aci_organization_id", limit: 32
    t.string "aci_venue_id", limit: 32
    t.date "qualified_at"
    t.integer "qualified_by", default: 0, null: false
    t.integer "qualified_by_author_id", default: 0, null: false
    t.integer "sales_manager_id", default: 0, null: false
    t.boolean "receives_leads", default: false, null: false
    t.boolean "hide_coupon_address", default: false, null: false
    t.boolean "hide_coupon_phone", default: false, null: false
    t.integer "naics_id", default: 0, null: false
    t.text "open_table_id"
    t.boolean "connected_to_convention_center", default: false, null: false
    t.integer "restaurant_cost_range_id", default: 0, null: false
    t.integer "accommodation_rooms_handicap", default: 0, null: false
    t.integer "accommodation_rooms_one_double", default: 0, null: false
    t.integer "accommodation_rooms_one_king", default: 0, null: false
    t.integer "accommodation_rooms_one_queen", default: 0, null: false
    t.integer "accommodation_rooms_sleeping", default: 0, null: false
    t.integer "accommodation_rooms_two_double", default: 0, null: false
    t.integer "accommodation_rooms_two_king", default: 0, null: false
    t.integer "accommodation_rooms_two_queen", default: 0, null: false
    t.integer "accommodation_suites", default: 0, null: false
    t.string "admission_adults", limit: 96
    t.string "admission_children", limit: 96
    t.string "admission_children_age", limit: 96
    t.string "admission_seniors", limit: 96
    t.string "admission_seniors_age", limit: 96
    t.boolean "group_rates_available", default: false, null: false
    t.text "hours_of_operation"
    t.text "days_of_operation"
    t.boolean "open_all_year", default: false, null: false
    t.string "seating_capacity", limit: 64
    t.integer "total_meeting_room_count", default: 0, null: false
    t.integer "total_meeting_square_footage", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "capacity_10x10", default: 0, null: false
    t.integer "banquet_capacity", default: 0, null: false
    t.integer "classroom_capacity", default: 0, null: false
    t.integer "conference_capacity", default: 0, null: false
    t.integer "h_shaped_capacity", default: 0, null: false
    t.integer "reception_capacity", default: 0, null: false
    t.integer "theater_capacity", default: 0, null: false
    t.integer "u_shaped_capacity", default: 0, null: false
    t.integer "maximum_capacity", default: 0, null: false
    t.string "accounting_id", limit: 32
    t.date "accounting_last_payment_at"
    t.integer "accounting_last_payment_product_id", default: 0, null: false
    t.decimal "accounting_last_payment_amount", precision: 12, scale: 2, default: "0.0"
    t.decimal "accounting_balance", precision: 12, scale: 2, default: "0.0"
    t.decimal "accounting_balance_30_days", precision: 12, scale: 2, default: "0.0"
    t.decimal "accounting_balance_60_days", precision: 12, scale: 2, default: "0.0"
    t.decimal "accounting_balance_90_days", precision: 12, scale: 2, default: "0.0"
    t.decimal "accounting_balance_120_plus_days", precision: 12, scale: 2, default: "0.0"
    t.text "accessibility_uri"
    t.integer "private_dining_capacity", default: 0, null: false
    t.text "venue_space_details"
    t.text "ares_id"
    t.text "ares_uri"
    t.text "ares_name"
    t.text "ares_rate"
    t.text "restaurant_carry_out_uri"
    t.index ["organization_id"], name: "index_supplier_organizations_on_organization_id"
  end

  create_table "supplier_qualifications", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.date "qualified_at"
    t.integer "qualified_by", default: 0, null: false
    t.integer "qualified_by_author_id", default: 0, null: false
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "system_status_logs", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "label", limit: 64
    t.string "identifier", limit: 64
    t.datetime "started_at", precision: nil
    t.datetime "finished_at", precision: nil
    t.boolean "completed", default: false, null: false
    t.text "message"
    t.text "error_message"
    t.integer "count", default: 0, null: false
    t.string "count_type", limit: 64
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "tagmaps", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "name", limit: 96
    t.text "description"
    t.integer "parent_id", default: 0, null: false
    t.integer "level", default: 0, null: false
    t.text "label"
    t.string "type_limit", limit: 32
    t.integer "position", default: 100, null: false
    t.string "abbreviation", limit: 16
    t.string "data_source_id", limit: 32
    t.integer "data_source_status", default: 0, null: false
    t.date "default_started_at"
    t.date "default_ended_at"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.text "category_label"
    t.text "flags"
    t.string "data_source_owner_id", limit: 32
    t.index ["label"], name: "index_tagmaps_on_label"
    t.index ["parent_id"], name: "index_tagmaps_on_parent_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "tagmap_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.integer "alt_tagmap_id", default: 0, null: false
    t.date "started_at"
    t.date "ended_at"
    t.text "description"
    t.text "value"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "sync_at", precision: nil
    t.string "data_source_owner_id", limit: 32
    t.index ["alt_tagmap_id"], name: "index_tags_on_alt_tagmap_id"
    t.index ["parent_object_id", "parent_object_type"], name: "index_analytics_scores_on_parent"
    t.index ["parent_object_id"], name: "index_tags_on_object_id"
    t.index ["tagmap_id"], name: "index_tags_on_tagmap_id"
  end

  create_table "tap_reports", force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.date "file_at"
    t.date "booking_at"
    t.string "booking_at_string", limit: 16
    t.integer "booking_day_of_week", default: 0, null: false
    t.integer "booking_week_of_year", default: 0, null: false
    t.integer "booking_week_and_day", default: 0, null: false
    t.bigint "room_nights", default: 0, null: false
    t.string "label", limit: 32
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.bigint "room_nights_used", default: 0, null: false
  end

  create_table "toggles", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.string "toggle_id", limit: 64
    t.string "toggle_label", limit: 64
    t.integer "person_id", default: 0, null: false
    t.boolean "open", default: true, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["toggle_id"], name: "index_toggles_on_toggle_id"
    t.index ["toggle_label"], name: "index_toggles_on_toggle_label"
  end

  create_table "view_maps", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.integer "tagmap_id", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "parent_object_type", limit: 32
    t.integer "tagmap_context_id", default: 0, null: false
    t.index ["parent_object_id"], name: "index_view_maps_on_person_id"
    t.index ["tagmap_id", "tagmap_context_id"], name: "index_view_maps_on_tagmap_id_and_tagmap_context_id"
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.text "label"
    t.text "email"
    t.text "name"
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.text "session_id"
    t.index ["email"], name: "index_votes_on_email"
    t.index ["label"], name: "index_votes_on_label"
    t.index ["session_id"], name: "index_votes_on_session_id"
  end

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

  create_table "web_details", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.text "abstract"
    t.integer "acievent_id", default: 0, null: false
    t.string "author", limit: 32
    t.integer "author_id", default: 0, null: false
    t.date "available_at"
    t.text "content"
    t.integer "content_type_id", default: 0, null: false
    t.string "content_type_string", limit: 32
    t.integer "cost_range_id", default: 0, null: false
    t.string "cost_range_sort_order", limit: 32
    t.string "cost_range_string", limit: 32
    t.string "customer_rating", limit: 32
    t.date "date_range_end_at"
    t.date "date_range_start_at"
    t.text "description"
    t.date "display_at"
    t.string "distance_from_airport", limit: 16
    t.string "distance_from_childrens_museum", limit: 16
    t.string "distance_from_convention_center", limit: 16
    t.string "distance_from_fair_grounds", limit: 16
    t.string "distance_from_monument_circle", limit: 16
    t.string "distance_from_speedway", limit: 16
    t.string "distance_from_zoo", limit: 16
    t.string "event_phone", limit: 32
    t.text "event_uri"
    t.date "expire_at"
    t.string "free_event", limit: 32
    t.text "group_tour_baggage"
    t.text "group_tour_comproom"
    t.text "group_tour_parking"
    t.integer "group_tour_rate_id", default: 0, null: false
    t.text "group_tour_rate_string"
    t.text "group_tour_reception"
    t.text "group_tour_specials"
    t.integer "hours_of_operation_id", default: 0, null: false
    t.text "hours_of_operation_string"
    t.integer "housing_event_id", default: 0, null: false
    t.string "housing_event_name", limit: 32
    t.string "housing_other_link", limit: 32
    t.string "location_string", limit: 32
    t.string "major_event", limit: 32
    t.text "open_table_id"
    t.string "organization_name", limit: 32
    t.string "organization_subcategory", limit: 32
    t.string "product_status", limit: 32, default: "0", null: false
    t.string "referring_link", limit: 32
    t.integer "sequence", default: 100, null: false
    t.string "subcategory", limit: 32
    t.string "tickets_phone", limit: 32
    t.text "tickets_uri"
    t.text "uri"
    t.integer "venue_id", default: 0, null: false
    t.string "venue_name", limit: 32
    t.string "venue_subcategory", limit: 32
    t.string "admission_adults", limit: 96
    t.string "admission_children", limit: 96
    t.string "admission_children_age", limit: 96
    t.string "admission_seniors", limit: 96
    t.string "admission_seniors_age", limit: 96
    t.string "check_personal", limit: 8
    t.string "check_travelers", limit: 8
    t.string "connected_via_skywalk", limit: 8
    t.string "customer_rating_count", limit: 8
    t.date "customer_rating_at"
    t.text "days_of_operation"
    t.text "description_for_planner"
    t.string "full_service", limit: 8
    t.string "group_rates_available", limit: 8
    t.string "guest_room_count", limit: 8
    t.text "hours_general"
    t.text "hours_of_operation"
    t.text "hours_seasonal"
    t.string "meal_function_largest", limit: 32
    t.string "meeting_room_count", limit: 8
    t.string "meeting_space_largest", limit: 16
    t.string "nightlife_age_restrictions", limit: 32
    t.text "nightlife_hours"
    t.string "number_rooms_handicap", limit: 8
    t.string "number_rooms_one_double", limit: 8
    t.string "number_rooms_one_king", limit: 8
    t.string "number_rooms_one_queen", limit: 8
    t.string "number_rooms_sleeping", limit: 8
    t.string "number_rooms_two_double", limit: 8
    t.string "number_rooms_two_king", limit: 8
    t.string "number_rooms_two_queen", limit: 8
    t.string "number_suites", limit: 8
    t.string "open_all_year", limit: 8
    t.string "seating_capacity", limit: 64
    t.string "total_meeting_room_count", limit: 16
    t.string "total_meeting_square_footage", limit: 16
    t.string "venue", limit: 8
    t.string "web_address1", limit: 128
    t.string "web_address2", limit: 128
    t.string "web_city", limit: 64
    t.string "web_country", limit: 64
    t.string "web_state", limit: 32
    t.string "web_zip", limit: 32
    t.string "whattodo", limit: 8
    t.string "expedia_hotel_rating", limit: 8
    t.string "expedia_number_of_rooms", limit: 8
    t.string "expedia_number_of_floors", limit: 8
    t.text "expedia_property_information"
    t.text "expedia_area_information"
    t.text "expedia_location_description"
    t.string "expedia_has_in_house_dining", limit: 8
    t.string "expedia_has_meeting_rooms", limit: 8
    t.string "venue_shortcut_uri", limit: 128
    t.string "venue_view_type", limit: 32
    t.integer "popularity_count", default: 0, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["parent_object_id"], name: "index_web_details_on_parent_object_id"
  end

  create_table "web_distances", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "object_1_id", default: 0, null: false
    t.string "object_1_type", limit: 32, null: false
    t.integer "object_2_id", default: 0, null: false
    t.string "object_2_type", limit: 32, null: false
    t.decimal "distance", precision: 12, scale: 2, null: false
    t.string "object_1_view_type", limit: 32
    t.string "object_2_view_type", limit: 32
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["context_organization_id", "object_1_id", "object_2_id"], name: "index_web_distances_multi_1"
    t.index ["object_1_id"], name: "index_web_distances_on_object_1_id"
  end

  create_table "web_meeting_rooms", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "organization_id"
    t.string "data_source_id", limit: 32
    t.integer "position", default: 100, null: false
    t.string "name", limit: 64
    t.string "capacity_10x10", limit: 32
    t.string "banquet_capacity", limit: 32
    t.string "ceiling_height", limit: 32
    t.string "classroom_capacity", limit: 32
    t.string "conference_capacity", limit: 32
    t.string "dimensions", limit: 32
    t.string "h_shaped_capacity", limit: 32
    t.string "reception_capacity", limit: 32
    t.string "square_feet", limit: 32
    t.string "theater_capacity", limit: 32
    t.string "u_shaped_capacity", limit: 32
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "web_popularity_ratings", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.string "ip_address", limit: 32
    t.string "session_id", limit: 64
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "web_requests", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.integer "organization_id", default: 0, null: false
    t.text "name_first"
    t.text "name_last"
    t.text "organization_name"
    t.string "title", limit: 128
    t.string "email", limit: 64
    t.string "phone", limit: 32
    t.string "phone_fax", limit: 32
    t.string "address1", limit: 128
    t.string "address2", limit: 128
    t.string "address3", limit: 128
    t.string "city", limit: 64
    t.string "state", limit: 32
    t.string "zip", limit: 32
    t.string "country", limit: 64
    t.string "subject", limit: 96
    t.text "content"
    t.text "named_content"
    t.string "label", limit: 96
    t.boolean "sign_up", default: false, null: false
    t.boolean "accept_terms_and_conditions", default: false, null: false
    t.boolean "needs_sync", default: false, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "updated_by", default: 0, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "age", limit: 32
    t.string "gender", limit: 32
    t.string "birthday", limit: 32
    t.text "document_uri"
    t.text "document_uri_mime_type"
    t.integer "purpose_id", default: 0, null: false
    t.integer "source_id", default: 0, null: false
    t.integer "count_value", default: 0, null: false
    t.integer "delivery_method_id", default: 0, null: false
    t.date "delivered_at"
    t.string "data_source_id", limit: 32
    t.integer "batch_id", default: 0, null: false
    t.date "request_at"
    t.index ["needs_sync"], name: "index_web_requests_needs_sync"
  end

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

  create_table "web_trips", id: :serial, force: :cascade do |t|
    t.integer "context_organization_id", default: 0, null: false
    t.integer "person_id", default: 0, null: false
    t.string "session_id", limit: 64
    t.integer "parent_object_id", default: 0, null: false
    t.string "parent_object_type", limit: 32
    t.integer "day", default: 1, null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

end
