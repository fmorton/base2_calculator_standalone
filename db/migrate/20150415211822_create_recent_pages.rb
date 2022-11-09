class CreateRecentPages < ActiveRecord::Migration
  def change
    create_table :recent_pages do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.text     "page_type"
      t.text     "page_name"
      t.text     "page_uri"
      t.text     "page_action"
      t.integer  "created_by", :default => 0, :null => false, :index => true
      t.integer  "updated_by", :default => 0, :null => false
      t.timestamps
    end

    add_index :recent_pages, [ :created_by ]
  end
end
