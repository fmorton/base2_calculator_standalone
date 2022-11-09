class TagmapsAddCategoryLabel < ActiveRecord::Migration
  def up
    add_column :tagmaps, :category_label, :string, :limit => 96, :after => :label
  end

  def down
  end
end
