class OrganizationPersonConnectionsAddIndex < ActiveRecord::Migration[5.0]
  def change
    add_index "organization_person_connections", ["organization_id"], :name => "index_organization_id"
  end
end
