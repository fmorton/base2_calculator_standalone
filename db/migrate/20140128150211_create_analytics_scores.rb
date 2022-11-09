class CreateAnalyticsScores < ActiveRecord::Migration
  def change
    create_table :analytics_scores do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.integer  "pageviews", :default => 0, :null => false
      t.integer  "score", :default => 0, :null => false
      t.integer  "minimum", :default => 0, :null => false
      t.integer  "maximum", :default => 1000, :null => false
      t.decimal  "multiplier", :precision => 12, :scale => 2, :default => 1.0
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.timestamps
    end

    add_index "tags", ["parent_object_id", "parent_object_type"], :name => "index_analytics_scores_on_parent"
  end
end
