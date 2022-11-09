class CmsAddManyDataSourceOwnerIds < ActiveRecord::Migration
  def change
    add_column :tags, :data_source_owner_id, :string, :limit => 32
    add_column :tagmaps, :data_source_owner_id, :string, :limit => 32
    add_column :addresses, :data_source_owner_id, :string, :limit => 32
    add_column :content_content_connections, :data_source_owner_id, :string, :limit => 32
    add_column :content_event_connections, :data_source_owner_id, :string, :limit => 32
    add_column :content_organization_connections, :data_source_owner_id, :string, :limit => 32
    add_column :event_organization_connections, :data_source_owner_id, :string, :limit => 32
    add_column :organization_person_connections, :data_source_owner_id, :string, :limit => 32
  end
end
