class ClicksAddParentObjectIdIndex < ActiveRecord::Migration
  def change
    add_index :clicks, [ :parent_object_id ]
  end
end
