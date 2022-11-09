class AddMetaDisallowCvb < ActiveRecord::Migration
  def up
    add_column :extended_meeting_dates, :organization_meta_disallow, :boolean, :default => false, :null => false
    add_column :extended_meeting_dates, :contact_organization_meta_disallow, :boolean, :default => false, :null => false
    add_column :housing_events, :meta_disallow, :boolean, :default => false, :null => false
    add_column :web_conventions, :meta_disallow, :boolean, :default => false, :null => false
  end

  def down
  end
end
