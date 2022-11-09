class WebConventionsAddHtmlCode < ActiveRecord::Migration[5.2]
  def change
    add_column :web_conventions, :html_code, :text
    add_column :web_conventions, :html_code_type, :integer, :default => 0, :null => false
  end
end
