class TagmapsAddDescription < ActiveRecord::Migration[5.2]
  def change
    change_column :tagmaps, :description, :text
  end
end
