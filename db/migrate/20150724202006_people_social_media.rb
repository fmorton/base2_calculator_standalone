class PeopleSocialMedia < ActiveRecord::Migration
  def change
    add_column :people, :website, :text
    add_column :people, :twitter_handle, :string, :limit => 32
  end
end
