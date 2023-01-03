#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: require_dependency "#{Base2Cvb::Engine.root}/lib/models/recent_page"
require_dependency "#{Base2Cms::Engine.root}/app/models/recent_page"

class RecentPage < ActiveRecord::Base
  def self.ignore_application?(o, action, params)
    return true if action == 'update'
    false
  end
end
