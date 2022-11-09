class MultiplePhaseOutShortcutUrl < ActiveRecord::Migration
  def up
    rename_column :events, :shortcut_url, :shortcut_uri
    rename_column :organizations, :shortcut_url, :shortcut_uri
    rename_column :redirects, :shortcut_url, :shortcut_uri
    rename_column :web_site_searches, :shortcut_url, :shortcut_uri
    rename_column :web_details, :venue_shortcut_url, :venue_shortcut_uri
  end

  def down
  end
end
