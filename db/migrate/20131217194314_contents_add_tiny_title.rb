class ContentsAddTinyTitle < ActiveRecord::Migration
  def up
    add_column :contents, :tiny_title, :text, :after => :subtitle
  end

  def down
  end
end
