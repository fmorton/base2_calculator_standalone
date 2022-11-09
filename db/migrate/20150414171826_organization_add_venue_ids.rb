class OrganizationAddVenueIds < ActiveRecord::Migration
  def change
    add_column :events, :venue_ids, :text
  end
end
