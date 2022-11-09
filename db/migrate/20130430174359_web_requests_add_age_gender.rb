class WebRequestsAddAgeGender < ActiveRecord::Migration
  def up
    add_column :web_requests, :age, :string, :limit => 32
    add_column :web_requests, :gender, :string, :limit => 32
  end

  def down
  end
end
