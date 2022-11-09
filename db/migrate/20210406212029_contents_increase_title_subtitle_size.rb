class ContentsIncreaseTitleSubtitleSize < ActiveRecord::Migration[6.0]
  def change
    change_column :contents, :title, :string, :limit => 255
    change_column :contents, :subtitle, :string, :limit => 255
  end
end
