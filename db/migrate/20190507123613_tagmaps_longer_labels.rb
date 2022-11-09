class TagmapsLongerLabels < ActiveRecord::Migration[5.2]
  def change
    change_column :tagmaps, :label, :text
    change_column :tagmaps, :category_label, :text
  end
end
