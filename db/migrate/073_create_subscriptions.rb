class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
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
  end
end