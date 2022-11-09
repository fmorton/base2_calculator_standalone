class ContentContentConnectionsConsolidate < ActiveRecord::Migration
  def up
    rename_column :content_content_connections, :parent_content_id, :content_1_id
    rename_column :content_content_connections, :content_id, :content_2_id
  end

  def down
  end
end
