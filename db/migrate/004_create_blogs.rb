class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.text     "feed_uri"
      t.string   "name", :limit => 64
      t.string   "author", :limit => 64
      t.text     "description"
      t.text     "image_uri"
      t.boolean  "staff_blog", :default => false, :null => false
      t.integer  "status", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end