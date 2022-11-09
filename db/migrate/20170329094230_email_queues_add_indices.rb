class EmailQueuesAddIndices < ActiveRecord::Migration[5.0]
  def change
    add_index "email_queues", ["requested_at"]
    add_index "email_queues", ["label"]
  end
end
