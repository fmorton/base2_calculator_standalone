#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: require_dependency "#{Base2Cvb::Engine.root}/lib/models/context_organization"
require_dependency "#{Base2Cms::Engine.root}/app/models/context_organization"

class ContextOrganization < ActiveRecord::Base
  def add_person_with_basic_privileges_extra(person)
    #-------------------------------------------------------------------------------------------------------------------------------
    #  add default values to the calculator context organization
    #-------------------------------------------------------------------------------------------------------------------------------
    self.update_column_and_add_to_changes_list(:logo_uri, "/assets/logos/economics_calculator.png") if self.logo_uri.blank?
    self.update_column_and_add_to_changes_list(:report_logo_uri, "/assets/logos/sports-indiana-logo.jpg") if self.report_logo_uri.blank?

    if self.report_footer.blank?
      report_footer = String.new
      report_footer << "201 South Capitol Avenue, Suite 300<br>\n"
      report_footer << "Indianapolis, IN 46225-1069 | 317.262.5025 | sportsindiana.org<br>\n"
      report_footer << "&reg; Rockport Analytics LLC | &reg; Tourism, Inc. | &reg; Base2 Incorporated\n"

      self.update_column_and_add_to_changes_list(:report_footer, report_footer)
    end

    if self.navigation.blank?
      navigation = String.new
      navigation << "--- \n"
      navigation << "Calculations:\n"
      navigation << "  priv: privilege_calculations\n"
      navigation << "  uri: /calculations\n"
      navigation << "Help:\n"
      navigation << "  Export_Key:\n"
      navigation << "    uri: https://s3.amazonaws.com/base2-documents/economics_calculator/Export_Key.pdf\n"
      navigation << "    target: _blank\n"
      navigation << "  New_Calculation:\n"
      navigation << "   uri: https://s3.amazonaws.com/base2-documents/economics_calculator/New_Calculation.pdf\n"
      navigation << "   target: _blank\n"

      self.update_column_and_add_to_changes_list(:navigation, navigation)
    end

    #-------------------------------------------------------------------------------------------------------------------------------
    #  set as an economics calculator organization (using named content)
    #-------------------------------------------------------------------------------------------------------------------------------
    if self.named_content.index("economics_calculator:").nil?
      named_content = self.named_content
      named_content = named_content.insert(0, "economics_calculator: true\n")
      named_content = named_content.gsub("\n\n", "\n").gsub("\n\n", "\n")

      self.update_column_and_add_to_changes_list(:named_content, named_content)
    end

    #-------------------------------------------------------------------------------------------------------------------------------
    #  add default people types
    #-------------------------------------------------------------------------------------------------------------------------------
    Tagmap.find_tagmap_creating_if_needed("People Type", "people_type", "Privileges", "people_type_privileges")
    Tagmap.find_tagmap_creating_if_needed("People Type", "people_type", "System Administrator", "people_type_system_administrator")

    #-------------------------------------------------------------------------------------------------------------------------------
    #  add default view type
    #-------------------------------------------------------------------------------------------------------------------------------
    view_type_tagmap = Tagmap.find_tagmap_creating_if_needed("View Type", "view_type", "Calculations", "view_type_calculations")

    #-------------------------------------------------------------------------------------------------------------------------------
    #  add default administrator
    #-------------------------------------------------------------------------------------------------------------------------------
    administrator = Person.context_scope.where(:email => 'fmorton@mac.com').first
    administrator = Person.new if administrator.nil?

    administrator.email = 'fmorton@mac.com'
    administrator.password = 'calculat3'
    administrator.name_first = 'Administrator'
    administrator.name_last = 'System'
    administrator.view_type_id = view_type_tagmap.id

    administrator.save!

    administrator.tag_with_label("people_type_privileges")

    add_person_with_basic_privileges_to_staff(administrator)

    Privilege.add_base_privileges(administrator)
    Privilege.add_base_privilege(administrator, Constant::TAGMAP_LABEL_PRIVILEGE_CALCULATIONS)
    Privilege.add_base_privilege(administrator, Constant::TAGMAP_LABEL_PRIVILEGE_ECONOMIC_CONSTANT_VALUES)

    #####TEST: "Visit Fort Wayne" stephanie@visitfortwayne.com Stephanie Coleman

    #-------------------------------------------------------------------------------------------------------------------------------
    #  add default privileges person
    #-------------------------------------------------------------------------------------------------------------------------------
    privileges = Person.context_scope.where(:name_first => 'Privileges').where(:name_last => 'System').first
    privileges = Person.new if privileges.nil?

    privileges.name_first = 'Privileges'
    privileges.name_last = 'System'

    privileges.save!

    Privilege.set_privilege_by_label(privileges, Constant::TAGMAP_LABEL_PRIVILEGE_CALCULATIONS, true, true, true, true, true, false)
    Privilege.set_privilege_by_label(privileges, Constant::TAGMAP_LABEL_PRIVILEGE_ORGANIZATIONS, true, true, true, true, false, false)
    Privilege.set_privilege_by_label(privileges, Constant::TAGMAP_LABEL_PRIVILEGE_PEOPLE, true, false, true, false, false, false)

    #-------------------------------------------------------------------------------------------------------------------------------
    #  apply default privileges to the new person
    #-------------------------------------------------------------------------------------------------------------------------------
    person.privilege_id = privileges.id
    person.password = 'changeit' if person.password_salt.blank?
    person.view_type_id = view_type_tagmap.id

    person.save!

    add_person_with_basic_privileges_to_staff(person)
  end
end
