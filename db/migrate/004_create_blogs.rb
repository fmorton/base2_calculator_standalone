class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
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
  end
end