#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
module RakeTasksHelper
  def rake_tasks_setup
    Thread.current[:organization_id] = 17
    Thread.current[:person_id] = 2247
  end

  #NOTE...2016.04.19...old method
  #def xml(name, value, indent = 2, encode_ampersand = true, cdata = false)
  #  xml = String.new
  #  (1..indent).each { xml += '  ' }
  #  value = "<![CDATA[#{value}]]>" if cdata
  #  xml += "<#{name}>#{value.to_s.fix_entities(encode_ampersand, false)}</#{name}>\n"
  #end

  def xml(name, value, indent = 2, encode_ampersand = true, cdata = false)
    xml = String.new
    (1..indent).each { xml += '  ' }
    value = "<![CDATA[#{value}]]>" if cdata
    xml += "<#{name}>#{value.to_s.fix_entities(encode_ampersand, false)}</#{name}>\n"
    xml = xml.gsub("\x03", "")
    xml = xml.fix_entities_for_xml
    xml
  end

  def xml_date(d)
    d.nil? ? '' : d.strftime("%m/%d/%Y")
  end

  def xml_cleanup(s)
    unless s.nil?
      s = s.fix_entities(true, true, true)
      s = s.gsub("<br>", "<br />")
      s = s.strip_utf8
    end
    s
  end

  def add_visitindy(uri)
    return uri if uri.blank? || uri.starts_with('http')
    return "http://visitindy.com#{uri}"
  end
end