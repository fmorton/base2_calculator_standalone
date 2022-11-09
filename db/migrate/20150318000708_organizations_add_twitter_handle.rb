class OrganizationsAddTwitterHandle < ActiveRecord::Migration
  def change
    add_column :organizations, :twitter_handle, :string, :limit => 32
  end
end
