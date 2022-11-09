class SubscriptionsAddPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :points, :text
  end
end
