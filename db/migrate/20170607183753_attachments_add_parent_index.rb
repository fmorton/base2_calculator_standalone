class AttachmentsAddParentIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :attachments, [ :parent_object_id, :parent_object_type ]
  end
end
