class PeopleAddBlogShortBio < ActiveRecord::Migration
  def change
    add_column :people, :blog_short_bio, :text
  end
end
