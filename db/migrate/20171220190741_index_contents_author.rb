class IndexContentsAuthor < ActiveRecord::Migration[5.1]
  def change
    add_index "contents", ["author"]
  end
end
