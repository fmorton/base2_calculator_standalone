class CreateWebDetails < ActiveRecord::Migration
  def change
    create_table :web_details do |t|
      t.integer  "context_organization_id", :default => 0, :null => false
      t.integer  "parent_object_id", :default => 0, :null => false
      t.string   "parent_object_type", :limit => 32
      t.text     "abstract"
      t.integer  "acievent_id", :default => 0, :null => false
      t.string   "author", :limit => 32
      t.integer  "author_id", :default => 0, :null => false
      t.datetime "available_at"
      t.text     "content"
      t.integer  "content_type_id", :default => 0, :null => false
      t.string   "content_type_string", :limit => 32
      t.integer  "cost_range_id", :default => 0, :null => false
      t.string   "cost_range_sort_order", :limit => 32
      t.string   "cost_range_string", :limit => 32
      t.string   "customer_rating", :limit => 32
      t.datetime "date_range_end_at"
      t.datetime "date_range_start_at"
      t.text     "description"
      t.datetime "display_at"
      t.string   "distance_from_airport", :limit => 16
      t.string   "distance_from_childrens_museum", :limit => 16
      t.string   "distance_from_convention_center", :limit => 16
      t.string   "distance_from_fair_grounds", :limit => 16
      t.string   "distance_from_monument_circle", :limit => 16
      t.string   "distance_from_speedway", :limit => 16
      t.string   "distance_from_zoo", :limit => 16
      t.string   "event_phone", :limit => 32
      t.text     "event_uri"
      t.datetime "expire_at"
      t.string   "free_event", :limit => 32
      t.text     "group_tour_baggage"
      t.text     "group_tour_comproom"
      t.text     "group_tour_parking"
      t.integer  "group_tour_rate_id", :default => 0, :null => false
      t.text     "group_tour_rate_string"
      t.text     "group_tour_reception"
      t.text     "group_tour_specials"
      t.integer  "hours_of_operation_id", :default => 0, :null => false
      t.text     "hours_of_operation_string"
      t.integer  "housing_event_id", :default => 0, :null => false
      t.string   "housing_event_name", :limit => 32
      t.string   "housing_other_link", :limit => 32
      t.string   "location_string", :limit => 32
      t.string   "major_event", :limit => 32
      t.text     "open_table_id"
      t.string   "organization_name", :limit => 32
      t.string   "organization_subcategory", :limit => 32
      t.string   "product_status", :limit => 32, :default => "0", :null => false
      t.string   "referring_link", :limit => 32
      t.integer  "sequence", :default => 100, :null => false
      t.string   "subcategory", :limit => 32
      t.string   "tickets_phone", :limit => 32
      t.text     "tickets_uri"
      t.text     "uri"
      t.integer  "venue_id", :default => 0, :null => false
      t.string   "venue_name", :limit => 32
      t.string   "venue_subcategory", :limit => 32
      t.string   "admission_adults", :limit => 96
      t.string   "admission_children", :limit => 96
      t.string   "admission_children_age", :limit => 96
      t.string   "admission_seniors", :limit => 96
      t.string   "admission_seniors_age", :limit => 96
      t.string   "check_personal", :limit => 8
      t.string   "check_travelers", :limit => 8
      t.string   "connected_via_skywalk", :limit => 8
      t.string   "customer_rating_count", :limit => 8
      t.datetime "customer_rating_at"
      t.text     "days_of_operation"
      t.text     "description_for_planner"
      t.string   "full_service", :limit => 8
      t.string   "group_rates_available", :limit => 8
      t.string   "guest_room_count", :limit => 8
      t.text     "hours_general"
      t.text     "hours_of_operation"
      t.text     "hours_seasonal"
      t.string   "meal_function_largest", :limit => 32
      t.string   "meeting_room_count", :limit => 8
      t.string   "meeting_space_largest", :limit => 16
      t.string   "nightlife_age_restrictions", :limit => 32
      t.text     "nightlife_hours"
      t.string   "number_rooms_handicap", :limit => 8
      t.string   "number_rooms_one_double", :limit => 8
      t.string   "number_rooms_one_king", :limit => 8
      t.string   "number_rooms_one_queen", :limit => 8
      t.string   "number_rooms_sleeping", :limit => 8
      t.string   "number_rooms_two_double", :limit => 8
      t.string   "number_rooms_two_king", :limit => 8
      t.string   "number_rooms_two_queen", :limit => 8
      t.string   "number_suites", :limit => 8
      t.string   "open_all_year", :limit => 8
      t.string   "seating_capacity", :limit => 64
      t.string   "total_meeting_room_count", :limit => 16
      t.string   "total_meeting_square_footage", :limit => 16
      t.string   "venue", :limit => 8
      t.string   "web_address1", :limit => 128
      t.string   "web_address2", :limit => 128
      t.string   "web_city", :limit => 64
      t.string   "web_country", :limit => 64
      t.string   "web_state", :limit => 32
      t.string   "web_zip", :limit => 32
      t.string   "whattodo", :limit => 8
      t.string   "expedia_hotel_rating", :limit => 8
      t.string   "expedia_number_of_rooms", :limit => 8
      t.string   "expedia_number_of_floors", :limit => 8
      t.text     "expedia_property_information"
      t.text     "expedia_area_information"
      t.text     "expedia_location_description"
      t.string   "expedia_has_in_house_dining", :limit => 8
      t.string   "expedia_has_meeting_rooms", :limit => 8
      t.string   "venue_shortcut_url", :limit => 128
      t.string   "venue_view_type", :limit => 32
      t.integer  "popularity_count", :default => 0, :null => false
      t.integer  "created_by", :default => 0, :null => false
      t.integer  "updated_by", :default => 0, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "web_details", ["parent_object_id"], :name => "index_web_details_on_parent_object_id"
  end
end