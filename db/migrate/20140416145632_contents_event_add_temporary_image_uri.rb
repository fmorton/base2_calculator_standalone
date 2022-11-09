class ContentsEventAddTemporaryImageUri < ActiveRecord::Migration
  def up
    add_column :events, :temporary_image_uri, :text
    add_column :contents, :temporary_image_uri, :text
  end

  def down
  end
end
