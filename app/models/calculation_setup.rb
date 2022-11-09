#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: added from base2_cvb
#DEBUG: needs to be heavily edited
require_dependency "#{Base2Cms::Engine.root}/app/models/setup"

class CalculationSetup < Setup
  def always_setup_application_extra(context)
    @meeting_date_status = ContextCache.tagmap("meeting_status", :include_blank => true).get_collection
    @meeting_date_category = ContextCache.tagmap("meeting_date_category")
    @economics_calculator_host_cities = ContextOrganization.where("named_content like '%economics_calculator: true%'").order("name").to_a

    if (context_organization_named_content = context.context_organization_named_content).not_nil?
      @economics_calculator = context_organization_named_content.named_content_value("economics_calculator").true?
      @economics_calculator_multi_city = context_organization_named_content.named_content_value("economics_calculator_multi_city").true?
      @economics_calculator_mode = (@economics_calculator || @economics_calculator_multi_city)
      @not_economics_calculator_mode = !(@economics_calculator_mode)
    end
  end

  def detail_setup_application_extra(context, o)
    self
  end
end
