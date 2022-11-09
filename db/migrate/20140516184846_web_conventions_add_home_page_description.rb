class WebConventionsAddHomePageDescription < ActiveRecord::Migration
  def up
    add_column :web_conventions, :description, :text
  end

  def down
  end
end
