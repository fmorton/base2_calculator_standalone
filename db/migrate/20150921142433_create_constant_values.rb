class CreateConstantValues < ActiveRecord::Migration
  def change
    create_table :constant_values do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.string   "label", :limit => 96
      t.string   "name", :limit => 96
      t.string   "reference", :limit => 96
      t.string   "value", :limit => 96
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.timestamps :null => false
    end

    add_index :constant_values, [ :label, :reference ]
  end
end
