class WebConventionAddWelcome < ActiveRecord::Migration
  def up
    add_column :web_conventions, :welcome_description, :text
  end

  def down
  end
end
