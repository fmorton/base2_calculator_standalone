class ContentsAddSearchable < ActiveRecord::Migration
  def up
    add_column :contents, :searchable, :boolean, :default => false
  end

  def down
  end
end
