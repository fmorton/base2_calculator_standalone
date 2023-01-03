#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: added from base2_cvb
#DEBUG: needs to be heavily edited
class CalculationsViewController < EconomicsController
  def index
    redirect_to :controller => 'error', :action => 'no_access'
  end
end
