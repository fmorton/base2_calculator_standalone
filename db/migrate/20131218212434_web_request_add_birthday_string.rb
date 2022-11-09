class WebRequestAddBirthdayString < ActiveRecord::Migration
  def up
    add_column :web_requests, :birthday, :string, :limit => 32
  end

  def down
  end
end
