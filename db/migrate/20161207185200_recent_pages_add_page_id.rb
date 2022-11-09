class RecentPagesAddPageId < ActiveRecord::Migration[5.0]
  def change
    add_column :recent_pages, :page_id, :integer, :default => 0, :null => false, :after => :context_organization_id
    add_index :recent_pages, [ :page_id, :page_type ]
  end
end
