#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
module ApplicationHelper
  #include Rails.application.routes.url_helpers
  #include Rails.application.routes.url_helpers unless Rails.application.nil?

  include ApplicationHelperConstants

  include Base2CmsApplication

  include ApplicationHelperString
  include ApplicationHelperMiscellaneous
  include ApplicationHelperTables
  include ApplicationHelperDates
  include ApplicationHelperMenu
  include ApplicationHelperButton
  include ApplicationHelperImages
  include ApplicationHelperSelect
  include ApplicationHelperToolbarExceptions
  include ApplicationHelperToolbar
  include ApplicationHelperFieldset
  include ApplicationHelperView
  include ApplicationHelperEdit
  include ApplicationHelperForm
  include ApplicationHelperTagmap
  include ApplicationHelperPrivileges
  include ApplicationHelperMultiTag
  include ApplicationHelperIndex
  include ApplicationHelperSearchExceptions
  include ApplicationHelperSearch
  include ApplicationHelperCachedName
  include ApplicationHelperPaginate
  include ApplicationHelperLayout
  include ApplicationHelperAutoComplete
  include ApplicationHelperLinks

  include AnalyticsHelper

  def event_or_meeting
    "Event"
  end

  def identifier(element, options = {})
    object_id = nil
    object_type = nil
    data_source_id = nil

    if element.is_a?(Hash)
      return ""
    elsif element.is_a?(WebSiteSearch)
      object_id = element.parent_object_id
      object_type = element.parent_object_type.downcase
      data_source_id = element.data_source_id
    elsif element.is_a?(WebSiteDetail)
      object_id = element.id
      object_type = element.class_name.downcase
      data_source_id = element.element['data_source_id']
    end

    return "" if object_id.nil?

    if object_type == 'organization'
      return image_tag("http://cdn.visitindy.com/miscellaneous/indy-partnership.png", options) if partner?(object_id)
      return ""
    end

    if object_type == 'event'
      return smart_image_link("http://cdn.visitindy.com/miscellaneous/artscouncil-partner.png", "https://indyarts.org/", nil, options) if data_source_id.starts_with("ACI:")
      return smart_image_link("http://cdn.visitindy.com/miscellaneous/do317new-partner.png", "http://do317.com", nil, options) if data_source_id.starts_with("DO317:")
    end
    ""
  end

  def partner?(organization_id)
    cache_key = "active_subscription_ids"
    if (active_subscription_ids = ContextCache.read(cache_key)).nil?
      if (product = Product.context_scope.active.where(:label => 'membership_dues').first).not_nil?
        active_subscriptions = Subscription.context_scope.active_status.where(:product_id => product.id).where(:status => 0).all.to_a
        active_subscription_ids = active_subscriptions.get_hash(:parent_object_id, nil)

        ContextCache.write(cache_key, active_subscription_ids, :expires_in => 1.hour)
      end
    end

    return false if active_subscription_ids.nil?

    active_subscription_ids.has_key?(organization_id.to_i)
  end

  def plannerize(uri)
    uri.gsub("/indianapolis-", "/indianapolis-planner-")
  end

  #TODO: move to base2_cms eventually
  def page_matches(uri_list)
    return false if uri_list.nil?
    uri_list = [ uri_list ] unless uri_list.class.name == 'Array'
    uri_list.each do |uri|
      return true if request.path.index(uri)
    end
    false
  end

  def page_does_not_match(uri_list)
    !(page_matches(uri_list))
  end

  #TODO: move to base2_cvb eventually
  #TODO: organization id should be in context_organization
  def open_table_uri(open_table_id)
    return open_table_id if open_table_id.starts_with("http")
    "http://www.opentable.com/single.aspx?ref=1249&rid=#{open_table_id.to_s}"
  end

  def main_navigation_active(partial_link, must_not_have_in_path = nil)
    return "" if ((must_not_have_in_path.not_blank?) && (request.fullpath.index(must_not_have_in_path)))
    (request.fullpath.index(partial_link)) ? " active" : ""
  end

  def main_sub_navigation(description, link)
    active_or_not = ((link.before_or_all('?') == request.fullpath.before_or_all('?')) ? " class='active'" : '')
    raw("<li#{active_or_not}><a href='#{link}'>#{description}</a></li>")
  end

  #TODO: phasing out and replacing with context.default_image_uri
  def default_image_uri(uri)
    return @context.cdn("http://cdn.visitindy.com/miscellaneous/default_blue_image.jpg") if uri.blank?
    @context.cdn(uri)
  end

  def object_type_class_name(element)
    class_name = (element.class_name.downcase rescue nil)
    class_name = (element.parent_object_type.downcase rescue nil) if class_name.blank?
    class_name = element.class.name.downcase if class_name.blank?
    class_name
  end

  def object_type_icon(element, extra_content = nil)
    class_name = object_type_class_name(element).strip
    extra_content_string = (extra_content.blank?) ? "" : " (#{extra_content.to_s})"

    return raw("<div class='list-type green-lime'><i class='fa fa-home'></i> Person#{extra_content_string}</div>") if class_name == 'person'
    return raw("<div class='list-type green-lime'><i class='fa fa-home'></i> Place#{extra_content_string}</div>") if class_name == 'organization'
  	return raw("<div class='list-type blue-dark'><i class='fa fa-calendar-o'></i> Event#{extra_content_string}</div>") if class_name == 'event'
  	return raw("<div class='list-type orange'><i class='fa fa-file-o'></i> Article#{extra_content_string}</div>") if class_name == 'content'
  	return raw("<div class='list-type red'><i class='fa fa-star'></i> Featured Sponsor#{extra_content_string}</div>") if class_name == 'hash'
  	""
  end

  def object_type_heading(element, s)
    class_name = object_type_class_name(element)

    return raw("<h3 class='list-title green-lime'>#{s}</h3>") if class_name == 'organization'
    return raw("<h3 class='list-title blue-dark'>#{s}</h3>") if class_name == 'event'
    return raw("<h3 class='list-title orange'>#{s}</h3>") if class_name == 'content'
    return raw("<h3 class='list-title red'>#{s}</h3>") if class_name == 'hash'
    s
  end

  def matches(s1, s2, if_matches)
    return if_matches if s1 == s2
    ""
  end

  def if_true(b, if_true_string)
    return if_true_string if b
    ""
  end

  def is_active(if_active)
    if_true(if_active, " active")
  end

  def next_counter(name = 'def_count_name')
    @counters_from_helper = {} if @counters_from_helper.nil?

    count = @counters_from_helper[name]
    count = -1 if count.nil?
    count = count + 1

    @counters_from_helper[name] = count

    count
  end

  def current_counter(name = 'def_count_name')
    @counters_from_helper[name]
  end

  def ajax_submit(request)
    { :remote => true, :url => request.fullpath.add_query_string_field("submit=true").add_query_string_field("ajax=true") }
  end

  def display_title(element)
    return element['name'] if element['name']
    return element['title'] if element['title']
    ""
  end

  #TODO: move to base2_cms date helpers
  def only_one_time(o, prefix = '', suffix = '')
    return '' if (s = o['date_range_with_times']).blank?
    return '' if (first_at_index = s.index(' at ')).nil?
    return '' if (second_at_index = s[(first_at_index+1)..-1].index(' at ')).not_nil?
    "#{prefix}#{s[first_at_index..-1].after(' at ')}#{suffix}"
  end

  def latitude_from_coordinates(coordinates, venue_coordinates = nil)
    latitude = coordinates.before(',').strip rescue nil
    latitude = (venue_coordinates.before(',').strip rescue nil) if venue_coordinates.not_nil? && latitude.empty?
    latitude = '39.768391' if latitude.empty?
    latitude
  end

  def longitude_from_coordinates(coordinates, venue_coordinates = nil)
    longitude = coordinates.after(',').strip rescue nil
    longitude = (venue_coordinates.after(',').strip rescue nil) if venue_coordinates.not_nil? && longitude.empty?
    longitude = '-86.157967' if longitude.empty?
    longitude
  end

  def element_for_top_picks(element)
    return if element.nil?

    s = String.new
    s << "<tr>\n"
    s << "<td>\n"
    s << "<div class='temp'>\n"

    if (is_ad = ((element['analytics_category'].not_blank?) rescue false))
      s << block_link(element, ad_analytics(element))
      s << smart_image_link(default_image_uri(element['smart_image_uri']), nil, element['title'],  ad_analytics(element).merge(:class => 'item img-responsive').merge(:style => 'max-width: 245px;'))
      s << block_link_end
    else
      event_name = element['smart_name']
      event_image_uri = element['smart_image_uri']
      event_shortcut_uri = element['smart_shortcut_uri']
      event_date_range = Date.date_range_string(element[:date_range_start_at], element[:date_range_end_at]).gsub(", #{Time.now.year}", "") rescue nil


      s << "<img src='#{event_image_uri}' alt='#{event_name}' style='max-width: 245px;' class='img-responsive'/>\n"
      s << "<div class='temp-caption'>\n"
      s << "<a href='#{event_shortcut_uri}'>\n"
      s << "<span><i class='fa fa-calendar blue-bright'></i>&nbsp;&nbsp;#{event_date_range}</span>\n" unless event_date_range.blank?
      s << "<span class='head'>#{event_name} <i class='fa fa-caret-square-o-right'></i></span>\n" unless is_ad
      s << "</a>\n"
      s << "</div>\n"
    end
    s << "</div>\n"
    s << "</td>\n"
    s << "</tr>\n"
    s
  end
end
