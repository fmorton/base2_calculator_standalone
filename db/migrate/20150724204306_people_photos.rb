class PeoplePhotos < ActiveRecord::Migration
  def change
    add_column :people, :image_uri, :text
    add_column :people, :blog_image_uri, :text
  end
end
