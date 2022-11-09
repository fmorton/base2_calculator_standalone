class ExpandExtendedSearchableSupport < ActiveRecord::Migration
  def up
    add_column :extended_meeting_dates, :organization_searchable, :boolean, :default => true, :null => false
    add_column :extended_meeting_dates, :contact_organization_searchable, :boolean, :default => true, :null => false
  end

  def down
  end
end
