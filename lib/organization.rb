#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: require_dependency "#{Base2Cvb::Engine.root}/lib/models/organization"
require_dependency "#{Base2Cms::Engine.root}/app/models/organization"

class Organization < ActiveRecord::Base
  def self.show_empty_query?
    false
  end
end
