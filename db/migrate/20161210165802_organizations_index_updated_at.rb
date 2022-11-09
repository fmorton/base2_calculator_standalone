class OrganizationsIndexUpdatedAt < ActiveRecord::Migration[5.0]
  def change
    add_index "organizations", ["updated_at"]
  end
end
