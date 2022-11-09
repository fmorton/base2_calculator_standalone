class IndexTuning < ActiveRecord::Migration[5.1]
  def change
    add_index "contents", ["image_uri"]
    add_index "email_queues", ["completed"]
    add_index "event_date_patterns", ["event_id"]
    add_index "events", ["venue_id"]
    add_index "organizations", ["parent_id"]
  end
end
