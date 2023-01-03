#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
module WebCouponsHelper
  def coupons_on_load(params)
    return " onLoad='window.print()'" if (!(params.has_key?('print'))) || params['print'].true?
    ""
  end
end
