class EmailQueuesMakeLabelBigger < ActiveRecord::Migration[6.0]
  def change
    change_column :email_queues, :label, :string, :limit => 96
  end
end
