#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: added from base2_cvb
#DEBUG: needs to be heavily edited
module CalculationsHelper
  def host_city_name(calculation)
    return calculation.context_organization_host_city_name if (calculation.context_organization_host_city_name.not_blank? rescue false)
    calculation.host_city_name
  end
end
