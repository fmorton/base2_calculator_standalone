class RedirectAddExpirationSupport < ActiveRecord::Migration
  def up
    add_column :redirects, :available_at, :date
    add_column :redirects, :expire_at, :date
  end

  def down
  end
end
