class EventsAddNamedContent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :named_content, :text
  end
end
