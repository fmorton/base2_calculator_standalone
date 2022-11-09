class OrganizationsAddTwitterLastId < ActiveRecord::Migration
  def change
    add_column :organizations, :twitter_last_id, :string, :limit => 64
  end
end
