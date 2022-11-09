#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
module MeetingDatesHelper
  def meeting_date_link(meeting_date)
    if @organizations_with_meetings_mode
      "/meeting_dates/#{meeting_date.id.to_s}?organization=#{meeting_date.organization_id.to_s}&meeting=#{meeting_date.meeting_id.to_s}"
    else
      return meeting_date
    end
  end

  def room_flow_link(meeting_date)
    return nil if meeting_date.nil?
    return nil if meeting_date.housing_1_at.nil?
    return nil if meeting_date.housing_day_count <= 0

    room_flow_report_id = ContextCache.fetch("room_flow_calendar_id_integer") { (Report.context_scope.where(:custom_report_name => 'room_flow_calendar').first.id.to_s rescue 0) }

    status_labels = []
    status_labels << "meeting_status_definite_booking"
    status_labels << "meeting_status_definite_lead"
    status_labels << "meeting_status_prospective_booking"
    status_labels << "meeting_status_tentative_lead"
    
    status_values = ContextCache.fetch("room_flow_calendar_status_integers") { Tagmap.context_scope.where(:label => status_labels).order(:id).to_a.get_array('id').join('/') }

    date_from = (meeting_date.housing_1_at - 7.days).standard_date
    date_to = (meeting_date.housing_1_at + meeting_date.housing_day_count - 1 + 7.days).standard_date

    uri = "/reports/#{room_flow_report_id}?date_from=#{date_from}&date_to=#{date_to}&status_value=#{status_values}&results_count=500"

    link_to(raw("<br /><u>View Room Flow Calendar for These Dates</u><br /><br />"), uri, :target => '_blank')
  end

  def note_attachments(note)
    s = String.new
    note.attachments.each do |attachment|
	    s << link_to(attachment.name, cai(:attachments, :download, attachment.id))
      s << "<br />\n"
    end
    raw(s)
  end

  def available(s, property_name, is_admin = false)
    return s if is_admin
    #return s if Rails.env.development?  #TEST
    return s if @meeting_date.nil?
    return s if @meeting_date_configuration_hash.nil?
    return nil if ((o = @meeting_date_configuration_hash[@meeting_date.meeting_status_id, property_name])).nil?
    return s if ((o['view']) rescue true)
    nil
  end

  def something_available(property_names)
    return true if property_names.nil?
    property_names.each do |property_name|
      return true if available(true, property_name).not_nil?
    end
    false
  end

  def meeting_date_note_link(meeting_date, note, description)
    link_to(raw(description), "/notes/#{note.id.to_s}/edit?organization=#{meeting_date.organization_id.to_s}&meeting=#{meeting_date.meeting_id.to_s}&meeting_date=#{meeting_date.id.to_s}")
  end

  def copy_meeting_date_link(meeting_date)
    uri = "/meeting_dates/#{meeting_date.id.to_s}/copy"
    query_string = request.fullpath.after('?')
    uri = "#{uri}?#{query_string}" unless query_string.blank?
    link_to(image_tag("/assets/base2_cms/icons/copy.gif"), uri, :data => { :confirm => "Are you sure you want to copy?" })
  end

  def conditional_lock_icon(meeting_date)
    return lock_icon if meeting_date.approval_held
    ''
  end

  def meeting_name_with_lock_icon(meeting_date)
    "#{conditional_lock_icon(meeting_date)} #{meeting_date.name}".strip
  end

  def rate_range(meeting_date)
    low = dollars(meeting_date.housing_rate_requested_low)
    high = dollars(meeting_date.housing_rate_requested_high)
    range = []
    range << low if low.not_blank_or_zero?
    range << high if high.not_blank_or_zero?
    range.join(' - ')
  end

  def meeting_date_log_type(meeting_date_log_type)
    s = String.new
    s << "New" if meeting_date_log_type.index("N")
    s << "Revised" if meeting_date_log_type.index("R")
    s << "Prospect" if meeting_date_log_type.index("P")
    s << "Lost" if meeting_date_log_type.index("L")
    s << "/Internal" if meeting_date_log_type.index("I")
    s
  end

  #TODO: positions should be context definable
  def meeting_date_approval_position(position)
    MeetingDateApprovalProcess::meeting_date_approval_description(position)
  end

  def meeting_date_name_with_organization(active_navigation, meeting_date)
    if active_navigation.originating_o
      "#{meeting_name_with_lock_icon(meeting_date)}"
    else
      "<i>#{organization_cached_name(meeting_date[:organization_id])}</i><br />#{meeting_name_with_lock_icon(meeting_date)}"
    end
  end

  def room_flow_header(meeting_date, date_property_name_prefixes, offset)
    previous_day_string = "unknown"

    s = String.new
    s << "<th class='text-center'>"
    date_property_name_prefixes.each do |date_property_name|
      next if (d = ((meeting_date.send(date_property_name) + offset.days) rescue nil)).nil?
      day_string = d.strftime("%a")
      s << "#{day_string}<br />\n" unless day_string == previous_day_string
      s << "#{d.strftime("%m/%d/%y")}<br />\n" if !(meeting_date.flexible_dates)
      previous_day_string = day_string
    end
    s << "</th>\n"
    raw(s)
  end

  def room_flow_percentages(row, peak_rooms)
    s = String.new
    s << "<tr>\n"
    s << "<td>% of Peak</td>"
    row.each do |room_count|
      s << "<td class='text-center'>#{((((room_count*100)/peak_rooms).to_s) rescue "0")}%</td>\n"
    end
    s << "</tr>\n"
    raw(s)
  end

  def room_flow_count(f, description, row, peak_rooms, date_property_prefix, offset, alternate_size = 0)
    row = Array.new(alternate_size) if row.empty? && (alternate_size > 0)
    s = String.new
    s << "<tr>\n"
    s << "<td style='vertical-align: middle; white-space: nowrap;'>#{description}</td>"
    row.each_with_index do |room_count, index|
      s << "<td class='text-center'>"
      if f
        s << text_field_tag("#{date_property_prefix}_#{(offset + index).to_s}", with_commas(room_count.to_i).to_s, class: 'form-control table-input-size text-center')
      else
        s << "#{with_commas(room_count.to_i).to_s}"
      end
      s << "</td>\n"
    end
    s << "</tr>\n"
    raw(s)
  end

  def edit_view_economics_income_expense(meeting_date_financial_commitment_form, economic_impact, description, property_name, internal_view, show_forecast, style_method = 'dollars_with_commas')
    if economic_impact.respond_to?(property_name)
      value = economic_impact.send(property_name)
      value = value.to_s.send(style_method) unless value.class.name == 'String'
    else
      value = ''
    end

    s = String.new
    s << "<tr>\n"
    s << "<td>"
    s << description
    s << "</td>\n"
    s << "<td class=\"text-right\">"
    if meeting_date_financial_commitment_form.nil? || property_name.index('total')
      s << ((value.blank?) ? '&nbsp;' : value)
    else
      if (economic_impact.respond_to?(property_name))
        s << ((meeting_date_financial_commitment_form.text_field("#{property_name}", :class => 'form-control table-input-size-not-used', :value => value)) rescue "")
      end
    end

    return "" if value.gsub("&nbsp;", "").blank_or_zero? && !(internal_view)

    s << "</td>\n"
    if internal_view && show_forecast
      s << "<td class=\"text-right\">"
      s << (economic_impact.send("#{property_name}_forecast").dollars_with_commas rescue "&nbsp;")
      s << "</td>\n"
    end
    s << "<td>"
    if meeting_date_financial_commitment_form.nil?
      s << (economic_impact.send("#{property_name}_description").to_s rescue "")
    else
      s << ((meeting_date_financial_commitment_form.text_field("#{property_name}_description", :class => 'form-control table-input-size-not-used')) rescue "")
    end
    s << "</td>\n"
    s << "</tr>\n"
    raw(s)
  end

  def view_economics_show_convention_center_expenses?(financial_commitment)
    #TODO: this is untested
    return true if financial_commitment.expense_space > 0.0
    return true if financial_commitment.expense_other_outside > 0.0
    false
  end

  def view_convention_center_text_field_tag(property_name, value)
    text_field_tag("meeting_date[meeting_date_economic_impact_attributes][#{property_name}]", value, :class => 'form-control table-input-size-not-used')
  end

  def view_convention_center_economics_element(economic_impact, property_name, property_name_suffix, editable = true, cleanup_method = 'dollars_with_commas')
    full_property_name = "cc_#{property_name}_#{property_name_suffix}"
    value = (economic_impact.send(full_property_name).send(cleanup_method) rescue nil).to_s
    alignment = ((cleanup_method == 'dollars_with_commas') ? 'right' : 'left')
    s = String.new
    s << "<td class=\"text-#{alignment}\">"
    if (params[:action] == 'show') || !(economic_impact.respond_to?(full_property_name)) || !(editable)
      s << value
    else
      s << text_field_tag("meeting_date[meeting_date_economic_impact_attributes][#{full_property_name}]", value, :class => 'form-control table-input-size-not-used')
    end
    s << "</td>\n"
    s
  end

  def view_convention_center_economics(economic_impact, description, property_name, normal_mode)
    s = String.new
    s << "<tr>\n"
    s << "<td>"
    s << description
    s << "&nbsp;</td>\n"
    s << view_convention_center_economics_element(economic_impact, property_name, "standard_rate")
    if normal_mode
      #s << view_convention_center_economics_element(economic_impact, property_name, "discount_1")
      #s << view_convention_center_economics_element(economic_impact, property_name, "discount_2")
      s << view_convention_center_economics_element(economic_impact, property_name, "gross_revenue")
      s << view_convention_center_economics_element(economic_impact, property_name, "direct_cost")
      s << view_convention_center_economics_element(economic_impact, property_name, "net_revenue", false)
    end
    s << view_convention_center_economics_element(economic_impact, property_name, "description", true, "to_s")
    s << "</tr>\n"
    raw(s)
  end

  def view_economics_spending_attribute(economic_impact, property_name, property_name_suffix, cleanup_method = 'to_s')
    full_property_name = "#{property_name}_#{property_name_suffix}"
    value = (economic_impact.send(full_property_name).send(cleanup_method) rescue nil).to_s

    if economic_impact.respond_to?(full_property_name)
      return text_field_tag("meeting_date[meeting_date_economic_impact_attributes][#{full_property_name}]", value, :class => 'form-control table-input-size-not-used')
    else
      return value
    end
  end

  def view_economics_spending(meeting_date, economic_impact, description, property_name, include_lever = true)
    decimal_value = (economic_impact.send(property_name) rescue nil)
    per_person_attendance = meeting_date.total_attendance
    per_person_attendance = economic_impact.economic_attendance_for_calculations if per_person_attendance.blank_or_zero?
    per_person = ((decimal_value / per_person_attendance) rescue nil)

    s = String.new
    s << "<tr>\n"
    s << "<td>"
    s << description
    s << "</td>\n"
    s << "<td class=\"text-right\">"
    s << decimal_value.to_s.dollars_with_commas
    s << "</td>\n"
    s << "<td class=\"text-right\">"
    s << per_person.to_s.dollars_with_commas
    s << "</td>"

    if include_lever
      if (params[:action] == 'show')
        s << "<td class=\"text-right\">"
        s << (economic_impact.send("#{property_name}_lever").percentage_string rescue nil).to_s
        s << "</td>\n"
        s << "<td>"
        s << (economic_impact.send("#{property_name}_lever_note") rescue nil).to_s
        s << "</td>\n"
      else
        s << "<td class=\"text-right\">"
        s << view_economics_spending_attribute(economic_impact, property_name, 'lever', :percentage_string)
        s << "</td>\n"
        s << "<td>"
        s << view_economics_spending_attribute(economic_impact, property_name, 'lever_note')
        s << "</td>\n"
      end
    else
      s << "<td>&nbsp;</td>"
      s << "<td>&nbsp;</td>"
    end

    s << "</tr>"
    raw(s)
  end

  def hotel_response_list_heading(location)
    s = String.new
    s += "<thead>\n"
    s += "<tr>\n"
    if params[:action] == 'show'
      s += "<td style='background-color: #ffffff; border-right: 0;' colspan='9'><h4 style='margin: 10px 0 0 0;'>#{location}</h4></td>\n"
    else
      s += "<td style='background-color: #ffffff; border-right: 0;' colspan='7'><h4 style='margin: 10px 0 0 0;'>#{location}</h4></td>\n"
      s += "<td style='background-color: #ffffff; vertical-align: bottom;' colspan='2'>"
      s += "<div class='form-inline float-right'>"
      s += "<div class='checkbox'><label><input type='checkbox' class='table-selection-all'> All</label></div>"
      s += "<div class='checkbox'><label><input type='checkbox' class='table-selection-remove'> Remove</label></div>"
      s += "</div>"
    end
    s += "</td>\n"
    s += "</tr>\n"
    s += "<tr>\n"
    s += "<th style='width: 1%;' class='text-center'>Selected</th>\n"
    s += "<th style='width: 1%;' class='text-center'>Active</th>\n"
    s += "<th style='width: 20%;' class='text-left'>Hotel</th>\n"
    s += "<th style='width: 1%;' class='text-center'>#{image_tag('/assets/base2_cms/icons/attachments.gif')}</th>\n"
    s += "<th style='width: 6%;' class='text-center'>Date Sent</th>\n"
    s += "<th style='width: 6%;' class='text-center'>Hotel Status</th>\n"
    s += "<th style='width: 6%;' class='text-center'>Response By</th>\n"
    s += "<th style='width: 6%;' class='text-center'>Response Date</th>\n"
    s += "<th style='width: 6%;' class='text-center'>Peak Rooms Blocked</th>\n"
    s += "</tr>\n</thead>\n"
  end

  def hotel_response_list_attachment(meeting_date_response)
    ((meeting_date_response.attachments.size == 0) ? raw('&nbsp;') : image_tag('/assets/base2_cms/icons/attachments.gif'))
  end

  def group_tour_dates_heading(include_delete_column)
    s = String.new
    s += "<thead>\n<tr>\n"
    s += "<th style='width: 15%;' class='text-left'>Tour</th>\n"
    s += "<th style='width: 20%;' class='text-center'>Tour Type</th>\n"
    s += "<th style='width: 10%;' class='text-center'>Deposit Tracking</th>\n"
    s += "<th style='width: 30%;' class='text-center'>Notes</th>\n"
    s += "<th style='width: 5%;' class='text-center'></th>\n"
    s += "<th style='width: 1%;' class='text-center'>&nbsp;</th>\n" if include_delete_column
    s += "</tr>\n</thead>\n"
  end

  def approval_responses_heading
    s = String.new
    s += "<thead>\n"
    s += "<tr>\n"
    s += "<th class='text-center' width='20%'>Approval Type</th>\n"
    s += "<th class='text-center' width='20%'>Approval Status</th>\n"
    s += "<th class='text-center' width='20%'>Approved By</th>\n"
    s += "<th class='text-center' width='8%'>Approval Date</th>\n"
    s += "</tr>\n"
    s += "</thead>\n"
    raw(s)
  end

  def meeting_date_hotel_response_editing(meeting_date_response, hotel_id, f = nil)
    return '' if f.nil?
    return hidden_field_tag("hotel-response-editing-#{hotel_id.to_s}", 'Y')
  end

  def meeting_date_hotel_response_exists(meeting_date_response, hotel_id, f = nil)
    return '' if f.nil?
    return '' if meeting_date_response.nil?
    return hidden_field_tag("hotel-response-exists-#{hotel_id.to_s}", 'Y')
  end

  def meeting_date_hotel_response_selected(meeting_date, meeting_date_response, hotel_id, f = nil)
    options = {}
    options[:disabled] = (f.nil?)

    #NOTE: 2017.07.25...disable meeting_date_response creation via ajax...also see MeetingDateResponsesController.initialize_response
    #ajax = "send_ajax_uri('/meeting_date_responses/initialize_response?meeting_date=#{meeting_date.id}&accommodation_id=#{hotel_id}&checked='+this.checked);"
    #options[:onclick] = ajax if (f.not_nil? && meeting_date_response.nil?)

    check_box_tag("hotel-response-selected-#{hotel_id.to_s}", 'Y', meeting_date_response.not_nil?, options)
  end

  def meeting_date_hotel_response_active(meeting_date_response, hotel_id, f = nil)
    active = (meeting_date_response.selected rescue false)
    not_lost = (!(meeting_date_response.lost_status?) rescue false)
    check_box_tag("hotel-response-active-#{hotel_id.to_s}", 'Y', (active && not_lost), :disabled => (f.nil?))
  end

  def hotel_response_link(meeting_date, hotel, h, view_mode)
    options = {}
    options[:target] = '_blank'
    #TODO: really add disabled support to the link? (may not need)
    options[:disabled] = true if (view_mode || h.nil?)

    return hotel.name if (view_mode && h.nil?)

    query_string = String.new
    query_string += "?organization=#{meeting_date.organization_id.to_s}"
    query_string += "&meeting=#{meeting_date.meeting_id.to_s}"
    query_string += "&meeting_date=#{meeting_date.id.to_s}"
    query_string += "&accommodation=#{hotel.id.to_s}"

    options[:disabled] = false

    link_to(hotel.name, "/meeting_date_responses/find_response#{query_string}", options)
  end

  def combine_approval_by_names(h)
    return '' if h.nil?

    name = [ h.approval_by_last_name, h.approval_by_first_name ].select { |n| n.not_blank_or_zero? }.join(', ')
    email = ((h.email.blank?) ? nil : "<a href='mailto:#{h.email}'>#{h.email}</a>")
    phone = ((h.phone.blank?) ? nil : "<a href='tel:#{h.phone}'>#{h.phone}</a>")

    content = "<strong>#{name}</strong>"
    content = "#{content}<br />#{email}" unless email.blank?
    content = "#{content}<br />#{phone}" unless phone.blank?

    popover_link(name, content)
  end

  def combine_peak_rooms(meeting_date, h)
    return '' if meeting_date.nil?
    return '' if h.nil?
    return '' if (h.peak_rooms_1.blank_or_zero?) && (h.peak_rooms_2.blank_or_zero?) && (h.peak_rooms_3.blank_or_zero?)
    return '' if h.approval_status != MeetingDateConstants::MEETING_DATE_RESPONSE_STATUS_APPROVED

    peak_rooms = []
    peak_rooms << h.peak_rooms_1.to_i unless meeting_date.housing_1_at.nil?
    peak_rooms << h.peak_rooms_2.to_i unless meeting_date.housing_2_at.nil?
    peak_rooms << h.peak_rooms_3.to_i unless meeting_date.housing_3_at.nil?
    peak_rooms.join('/')
  end

  def combine_peak_rooms_committed(meeting_date)
    return '' if meeting_date.nil?
    combined = []
    combined << meeting_date.peak_rooms_committed_1 unless meeting_date.housing_1_at.nil?
    combined << meeting_date.peak_rooms_committed_2 unless meeting_date.housing_2_at.nil?
    combined << meeting_date.peak_rooms_committed_3 unless meeting_date.housing_3_at.nil?
    combined.join('/')
  end

  def combine_hold_option(h)
    return '' if h.nil?
    [ MeetingDateConstants.status_string(h.hold_option_1), MeetingDateConstants.status_string(h.hold_option_2), MeetingDateConstants.status_string(h.hold_option_3) ].select { |n| n.not_blank? }.join('/')
  end

  def combine_rates(h, property_name)
    return '' if h.nil?
    [ h.send("#{property_name.to_s}_1").dollars, h.send("#{property_name.to_s}_2").dollars, h.send("#{property_name.to_s}_3").dollars ].select { |n| n.not_blank? }.join('/')
  end

  def combine_flat_rate(h)
    combine_rates(h, :room_rate_flat)
  end

  def combine_single_rate(h)
    combine_rates(h, :room_rate_1b1p)
  end

  def combine_double_rate(h)
    combine_rates(h, :room_rate_1b2p)
  end

  def combine_triple_rate(h)
    combine_rates(h, :room_rate_2b3p)
  end

  def combine_quad_rate(h)
    combine_rates(h, :room_rate_2b4p)
  end

  def number_to_percentage_with_blank(f)
    return '' if f.nil?
    return "" if f == 0.0
    number_to_percentage((f * 100.0), :precision => 0)
  end

  def meeting_space_assignment(f, value, room_id, index)
    value = value.gsub("&nbsp;", "").gsub("&NBSP;", "").upcase
    return raw(value) if f.nil?
    key = "meeting-space:#{room_id}:#{index.to_s}"
    raw(text_field_tag(key, value, class: 'form-control table-input-size text-center'))
  end

  def group_history_link(meeting_date, include_attendance = false)
    meeting_date_date = standard_date(meeting_date.meeting_1_at)
    room_block_string = meeting_date.pick_up_string

    if room_block_string.blank? || (room_block_string.gsub("0", '').gsub(":", '').blank?)
      return meeting_date_date
    else
      locals = {}
      locals[:f] = (defined?(f) ? f : nil)
      locals[:meeting_date] = meeting_date
      locals[:description] ='Room Block'
      locals[:room_block_string] = room_block_string
      locals[:date_property_name_prefixes] = [ 'pick_up_at' ]
      if include_attendance
        locals[:attendance_property_name_prefix] = 'attendance'
        locals[:attendance_description] = 'Attendance'
        locals[:attendance_string] = meeting_date.attendance_string
      end
      locals[:flexible_dates] = meeting_date.flexible_dates

      group_history_room_block_string = render(:partial => 'meeting_dates/room_block', :locals => locals).gsub('"', '"')

      return popover_link("<u>#{meeting_date_date}</u>", group_history_room_block_string)
    end
  end

  def consolidated_tax_calculation_property_name(property_name, index, property_name_prefix)
    s = String.new
    s += property_name_prefix
    s += "tax_"
    s += "#{index.to_s}_" unless (index == 0)
    s += property_name
    s
  end

  def consolidated_tax_calculation(economic_impact, index, property_name_prefix)
    total = 0.0
    total += (economic_impact.send(consolidated_tax_calculation_property_name('entity_1_debt', index, property_name_prefix)) rescue 0.0)
    total += (economic_impact.send(consolidated_tax_calculation_property_name('entity_1_operations', index, property_name_prefix)) rescue 0.0)
    total += (economic_impact.send(consolidated_tax_calculation_property_name('entity_2', index, property_name_prefix)) rescue 0.0)
    total += (economic_impact.send(consolidated_tax_calculation_property_name('local', index, property_name_prefix)) rescue 0.0)
    total
  end

  def meeting_date_approval_needed_string(approval)
    s = String.new
    (1..MeetingDateApprovalProcess::MEETING_DATE_APPROVAL_STEPS_MAX).each do |position|
      s << MeetingDateApproval.position_string(approval.send("approval_status_#{position.to_s}"), position).to_s
    end
    s
  end

  def meeting_date_status_note_popover(meeting_date)
    return '' if meeting_date.status_note_updated_at.nil?

    if (date_string = standard_date(meeting_date.status_note_updated_at)).blank?
      return ''
    elsif (meeting_date.status_note.blank?)
      return date_string
    else
      return raw("<u>#{popover_link(date_string, meeting_date.status_note)}</u>")
    end
  end
end
