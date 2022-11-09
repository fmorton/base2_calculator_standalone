#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: Dir.foreach("#{Base2Cvb::Engine.root}/lib/models") do |filename|
#DEBUG:   next if filename == 'constant.rb'
#DEBUG:   require_dependency "#{Base2Cvb::Engine.root}/lib/models/#{filename}" if filename.ends_with(".rb")
#DEBUG: end

require "context_organization"
#DEBUG: moved to models from base2_cvb...require "meeting_date"
require "recent_page"
require "seed"

require "organization"
require "person"
require "static_asset"

module Base2Calculator
end