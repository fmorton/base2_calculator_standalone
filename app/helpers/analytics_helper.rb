#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
module AnalyticsHelper
  def data_layer_start
    "dataLayer.push({\n"
  end

  def data_layer_end
    "  });"
  end

  def data_layer_finalize(s)
    s.gsub(",\n#{data_layer_end}", "\n#{data_layer_end}")
  end

  def data_layer_search_type_name_remap(name)
    return 'things-to-do' if name == 'whattodo'
    return 'where-to-eat' if name == 'restaurant'
    return 'where-to-stay' if name == 'hotel'
    name
  end

  def data_layer_lookup_list_element(lookup_list, value)
    lookup_list.each do |lookup_pair|
      next if lookup_pair.nil?
      return lookup_pair[0] if value.to_s == lookup_pair[1].to_s
    end
    nil
  end

  def data_layer_element(name, value, lookup_list = nil)
    if value.empty?
      value = 'none'
    elsif lookup_list.not_nil?
      value = value.collect { |o| data_layer_lookup_list_element(lookup_list, o) }.compact
      value = 'none' if value.empty?
    end

    raw("    '#{name}': '#{value.join('|').downcase}',\n")
  end

  def data_layer_event
    data_layer_element('event', 'results')
  end

  def data_layer_search_type
    data_layer_element('search_type', data_layer_search_type_name_remap(@search_type_value))
  end

  def data_layer_convention_name
    (@convention.title.escape_single_quote rescue (@convention.name.escape_single_quote rescue 'none'))
  end

  def data_layer_convention(add_spacing = false)
    s = "'branded_site': '#{data_layer_convention_name}'"
    s = "    #{s}\n" if add_spacing
    s
  end

  def data_layer_things_to_do_type(uri)
    type_from_uri = uri.before_or_all('?')
    type_from_uri = type_from_uri.after_or_all('/')
    type_from_uri = type_from_uri.sub('indianapolis-', '')
    type_from_uri
  end

  def data_layer_things_to_do
    s = data_layer_start
    s += data_layer_event
    s += data_layer_search_type
    s += data_layer_element('things_to_do', data_layer_things_to_do_type(request.path))
    s += data_layer_element('things_to_do_type', ((@search_events) ? 'events' : 'places'))
    s += data_layer_element('category', @search_category_whattodo_value, @what_to_do_category_list)
    s += data_layer_element('filter', @search_filter_whattodo_value, @what_to_do_filter_list)
    s += data_layer_element('keywords', @search_key_value_whattodo)
    s += data_layer_element('location', @search_area_value, @search_area_list)
    s += data_layer_element('sort', @search_sort_value)
    s += data_layer_element('display_style', @search_display_style)
    s += data_layer_end
    data_layer_finalize(s)
  end

  def data_layer_where_to_eat
    s = data_layer_start
    s += data_layer_event
    s += data_layer_search_type
    s += data_layer_element('category', @search_category_restaurant_value, @restaurant_category_list)
    s += data_layer_element('filter', @search_filter_restaurant_value, @restaurant_filter_list)
    s += data_layer_element('keywords', @search_key_value_restaurant)
    s += data_layer_element('location', @search_area_value, @search_area_list)
    s += data_layer_element('sort', @search_sort_value)
    s += data_layer_element('display_style', @search_display_style)
    s += data_layer_end
    data_layer_finalize(s)
  end

  def data_layer_where_to_stay
    s = data_layer_start
    s += data_layer_event
    s += data_layer_search_type
    s += data_layer_element('category', @search_category_hotel_value, @accommodation_category_list)
    s += data_layer_element('keywords', @search_key_value_hotel)
    s += data_layer_element('location', @search_area_value, @search_area_list)
    s += data_layer_element('sort', @search_sort_value)
    s += data_layer_element('display_style', @search_display_style)

    if @expedia_parameters.available?
      adult_total = 0
      children_total = 0

      @expedia_parameters.rooms.each_with_index do |room, index|
        adult_total += room.number_of_adults
        children_total += room.number_of_children
      end
      s += data_layer_element('check_in_date', @expedia_parameters.check_in.standard_date)
      s += data_layer_element('check_out_date', @expedia_parameters.check_out.standard_date)
      s += data_layer_element('rooms', @expedia_parameters.rooms.size.to_s)
      s += data_layer_element("adults", adult_total.to_s)
      s += data_layer_element("children", children_total.to_s)
    else
      s += data_layer_element('check_in_date', 'none')
      s += data_layer_element('check_out_date', 'none')
      s += data_layer_element('rooms', 'none')
    end
    s += data_layer_end
    data_layer_finalize(s)
  end

  def data_layer_data
  return raw(data_layer_things_to_do) if @is_things_to_do_section
  return raw(data_layer_where_to_eat) if @is_where_to_eat
  return raw(data_layer_where_to_stay) if @is_where_to_stay
  nil
  end

  def data_layer_onload
    if (data = data_layer_data).not_blank?
      return " onLoad=\"#{data}\""
    end
    ""
  end
end