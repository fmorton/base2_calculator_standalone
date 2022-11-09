class CreateContentOrganizationConnections < ActiveRecord::Migration
  def change
    create_table :content_organization_connections do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "content_id", :default => 0, :null => false
      t.integer  "organization_id", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end