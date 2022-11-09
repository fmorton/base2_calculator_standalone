class MultiplePhaseOutShortcutUrlCvb < ActiveRecord::Migration
  def up
    rename_column :extended_meeting_dates, :contact_organization_shortcut_url, :contact_organization_shortcut_uri
    rename_column :extended_meeting_dates, :organization_shortcut_url, :organization_shortcut_uri
    rename_column :housing_events, :shortcut_url, :shortcut_uri
    rename_column :web_conventions, :shortcut_url, :shortcut_uri
  end

  def down
  end
end
