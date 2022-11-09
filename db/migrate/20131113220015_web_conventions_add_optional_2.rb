class WebConventionsAddOptional2 < ActiveRecord::Migration
  def up
    rename_column :web_conventions, :optional_uri, :optional_uri_1
    rename_column :web_conventions, :optional_description, :optional_description_1
    add_column :web_conventions, :optional_uri_2, :text
    add_column :web_conventions, :optional_description_2, :text
  end

  def down
  end
end
