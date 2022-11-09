class WebDistancesAddSimpleIndex < ActiveRecord::Migration
  def up
    add_index :web_distances, :object_1_id
  end

  def down
  end
end
