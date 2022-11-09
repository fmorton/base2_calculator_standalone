class PeopleAddBlogBio < ActiveRecord::Migration
  def change
    add_column :people, :blog_bio, :text
  end
end
