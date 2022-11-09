class ViewMapPolymorphic < ActiveRecord::Migration
  def up
    rename_column :view_maps, :person_id, :parent_object_id
    add_column :view_maps, :parent_object_type, :string, :limit => 32, :after => :parent_object_id
  end

  def down
  end
end
