class CreateAnalyticsScores < ActiveRecord::Migration[7.0]
  def change
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
  end
end
