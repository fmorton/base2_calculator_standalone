class CreateContentVideoDetails < ActiveRecord::Migration[7.0]
  def change
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
  end
end