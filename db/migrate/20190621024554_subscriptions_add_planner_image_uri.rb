class SubscriptionsAddPlannerImageUri < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :planner_image_uri, :text
  end
end
