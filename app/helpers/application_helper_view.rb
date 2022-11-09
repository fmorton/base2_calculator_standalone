#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
require_dependency "#{Base2Cms::Engine.root}/app/helpers/application_helper_view"

module ApplicationHelperView
  def view_datepicker_range(description, start_at, end_at, options = {})
    start_range = standard_date(start_at)
    end_range = standard_date(end_at)
    range = start_range unless start_range.blank?
    range << " to " unless start_range.blank? || end_range.blank?
    range << end_range unless end_range.blank?
    return if range.blank? && options[:hide_if_empty].true?
    view_form_element(h(description), range)
  end
end
