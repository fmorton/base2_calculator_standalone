class HousingEventsAddContentImages < ActiveRecord::Migration[5.2]
  def change
    add_column :housing_events, :splash_content, :text
    add_column :housing_events, :image_1_uri, :text
    add_column :housing_events, :image_2_uri, :text
    add_column :housing_events, :image_3_uri, :text
    add_column :housing_events, :image_4_uri, :text
  end
end
