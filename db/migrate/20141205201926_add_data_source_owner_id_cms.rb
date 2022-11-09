class AddDataSourceOwnerIdCms < ActiveRecord::Migration
  def change
    add_column :contents, :data_source_owner_id, :string, :limit => 32
    add_column :events, :data_source_owner_id, :string, :limit => 32
    add_column :organizations, :data_source_owner_id, :string, :limit => 32
    add_column :people, :data_source_owner_id, :string, :limit => 32
    add_column :notes, :data_source_owner_id, :string, :limit => 32
  end
end
