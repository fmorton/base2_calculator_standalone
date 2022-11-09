class ContentsAddLinkUriAlt < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :link_uri_alt, :text
  end
end
