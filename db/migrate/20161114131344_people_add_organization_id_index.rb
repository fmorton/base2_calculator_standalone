class PeopleAddOrganizationIdIndex < ActiveRecord::Migration[5.0]
  def change
    add_index "people", ["organization_id"]
  end
end
