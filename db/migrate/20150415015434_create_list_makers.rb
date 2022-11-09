class CreateListMakers < ActiveRecord::Migration
  def change
    create_table :list_makers do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "person_id", :default => 0, :null => false
      t.integer  "organization_id", :default => 0, :null => false
      t.text     "name"
      t.text     "title"
      t.text     "email"
      t.text     "organization_name"
      t.integer  "created_by", :default => 0, :null => false, :index => true
      t.integer  "updated_by", :default => 0, :null => false
      t.timestamps
    end

    add_index :list_makers, [ :person_id, :created_by ]
  end
end
