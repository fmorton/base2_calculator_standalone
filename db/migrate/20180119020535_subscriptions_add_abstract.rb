class SubscriptionsAddAbstract < ActiveRecord::Migration[5.1]
  def change
    add_column :subscriptions, :abstract, :text
  end
end
