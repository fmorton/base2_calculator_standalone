class CouponsAddShortcutUri < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :shortcut_uri, :text
  end
end
