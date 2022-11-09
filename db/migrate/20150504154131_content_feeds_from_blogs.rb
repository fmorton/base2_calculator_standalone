class ContentFeedsFromBlogs < ActiveRecord::Migration
  def change
    rename_table :blogs, :content_feeds

    rename_column :content_feeds, :staff_blog, :staff_content_feed
    rename_column :contents, :blog_id, :content_feed_id

    ContentFeed.connection.execute("update tagmaps set name='Content Feeds',label='privilege_content_feeds' where label='privilege_blogs';")
    ContentFeed.connection.execute("update tagmaps set name='Content Feed Essentials',label='view_map.content_feeds.content_feed_essentials' where label='view_map.blogs.blog_essentials';")
    ContentFeed.connection.execute("update tagmaps set name='System',label='view_map.content_feeds.system' where label='view_map.blogs.system';")
  end
end
