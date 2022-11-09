class ContentsAddAlternateContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :alternate_content, :text
  end
end
