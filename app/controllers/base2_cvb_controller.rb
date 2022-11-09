#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#require_dependency "#{Rails.root}/../../lib/models/constant"
require_dependency "#{Base2Cms::Engine.root}/lib/base2_cms/base2_tagged_controller"
require_dependency "#{Base2Cms::Engine.root}/app/controllers/base2_cms_controller"
require_dependency "#{Base2Cms::Engine.root}/lib/base2_cms/base2_cms_application"

class Base2CvbController < Base2CmsController
  include Base2CmsApplication
  include Base2Layout

  protect_from_forgery
end
