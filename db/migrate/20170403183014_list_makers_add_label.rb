class ListMakersAddLabel < ActiveRecord::Migration[5.0]
  def change
    add_column :list_makers, :tagmap_id, :integer, default: 0, null: false

    add_index "list_makers", ["tagmap_id"]
  end
end
