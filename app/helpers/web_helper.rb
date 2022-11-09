#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
module WebHelper
  def map_title(element)
    s = String.new
    s << element.name
    s << "<br />"
    s << "<span class='info'>"
    s << "#{element.address_line_1}<br />" unless element.address_line_1.blank?
    s << "#{element.address_line_2}" unless element.address_line_2.blank?
    s << "</span>"
    s << "<br />"

    unless element.venue_name.blank?
      s << "<span class='cost'>"
      s << smart_text_link(element.venue_name, element.venue_uri, element.venue_name).gsub('"', "'")
      s << "</span>"
    end

    if (restaurant_cost_range = element.named_content_value("restaurant_cost_range")).not_blank?
      s << "<span class='cost'>"
      s << restaurant_cost_range
      s << "</span>"
    end

    if (admission = element.named_content_value("short_admission")).not_blank?
      s << "<span class='cost'>"
      s << admission
      s << "</span>"
    end

    raw(s.escape_single_quote)
  end

  def price_range(low, high)
    return "<span class=\"alert\">Sold Out</span>".sanitized_html if low.blank? and high.blank?

    low = number_to_currency(low).gsub('.00', '')
    high = number_to_currency(high).gsub('.00', '')

    return low if low == high

    "#{low}&ndash;#{high}".sanitized_html
  end

  def expedia_no_vacancy_message(expedia_id)
    return "Online booking not available. Call directly for rooms and rates." if expedia_id.blank_or_zero?
    "Sorry, but this property is either sold out or their minimum night stay requires more nights."
  end

  def expedia_redirect_uri(expedia_parameters, rooms, room)
    rate_key = room.hrn_quote_key rescue nil    # expedia v1
    rate_key = room.rate_key if rate_key.nil?   # expedia v3
    "/web_expedia/book?hotel_checkin=#{standard_date(expedia_parameters.check_in)}&hotel_checkout=#{standard_date(expedia_parameters.check_out)}&hotel_id=#{rooms.hotel_id}&type=#{room.room_type_code}&code=#{room.rate_code}&rooms=#{expedia_parameters.rooms.encode}&key=#{rate_key}" #rescue ''
  end

  COLLECTION_COLORS = [ 'blue-dark', 'blue-bright', 'green-lime', 'blue-bright', 'orange', 'blue-dark', 'green-lime', 'orange', 'blue-bright', 'orange', 'blue-dark', 'blue-bright' ]

  def current_collection_color
    @current_collection_color
  end

  def collection_color
    @collection_color_index = 0 if @collection_color_index.nil?
    @current_collection_color = COLLECTION_COLORS[@collection_color_index]
    @collection_color_index += 1
    if @collection_color_index >= COLLECTION_COLORS.size
      @collection_color_index = 0
    end
    @current_collection_color
  end

  def collection_text_heading(title, subtitle, link_uri)
    heading_text = "<strong>#{title}</strong><br /><span>#{subtitle}</span>"
    heading_text = link_to(raw(heading_text), link_uri, :class => 'reverse-title') unless link_uri.blank?
    raw("<h1>#{heading_text}</h1>")
  end
end
