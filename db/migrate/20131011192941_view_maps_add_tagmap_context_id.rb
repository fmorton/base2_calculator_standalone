class ViewMapsAddTagmapContextId < ActiveRecord::Migration
  def up
    add_column :view_maps, :tagmap_context_id, :integer, :default => 0, :null => false

    add_index :view_maps, [ :tagmap_id, :tagmap_context_id ]
  end

  def down
  end
end
