class AttachmentsAddAttachmentType < ActiveRecord::Migration[5.1]
  def change
    add_column :attachments, :attachment_type, :string, :limit => 32, :default => '', :null => false
  end
end
