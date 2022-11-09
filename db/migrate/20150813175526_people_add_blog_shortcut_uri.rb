class PeopleAddBlogShortcutUri < ActiveRecord::Migration
  def change
    add_column :people, :blog_shortcut_uri, :text
  end
end
