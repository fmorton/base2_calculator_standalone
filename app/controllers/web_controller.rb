#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: require_dependency "#{Base2Cvb::Engine.root}/app/controllers/base2_cvb_controller"

class WebController < Base2CvbController
  include Base2CmsApplication

  layout 'web'
end
