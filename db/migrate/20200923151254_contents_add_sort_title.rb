class ContentsAddSortTitle < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :sort_title, :text

    Content.connection.execute("update contents set sort_title=title")
  end
end
