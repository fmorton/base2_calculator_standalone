class ReportsAddLinkOpensNewWindow < ActiveRecord::Migration
  def change
    add_column :reports, :link_opens_new_window, :boolean, :default => false, :null => false
  end
end
