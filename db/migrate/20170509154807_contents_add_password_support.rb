class ContentsAddPasswordSupport < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :password, :string, :limit => 32
    add_column :contents, :password_content, :text
  end
end
