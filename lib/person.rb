#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: require_dependency "#{Base2Cvb::Engine.root}/lib/models/person"
require_dependency "#{Base2Cms::Engine.root}/app/models/person"

class Person < ActiveRecord::Base
  def self.show_empty_query?
    false
  end
end
