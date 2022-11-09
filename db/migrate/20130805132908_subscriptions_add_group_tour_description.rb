class SubscriptionsAddGroupTourDescription < ActiveRecord::Migration
  def up
    add_column :subscriptions, :group_tour_description, :text, :after => :planner_description
  end

  def down
  end
end
