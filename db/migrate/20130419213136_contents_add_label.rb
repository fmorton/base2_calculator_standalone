class ContentsAddLabel < ActiveRecord::Migration
  def up
    add_column :contents, :label, :string, :limit => 96, :after => :subtitle
    add_index  :contents, :label
  end

  def down
  end
end
