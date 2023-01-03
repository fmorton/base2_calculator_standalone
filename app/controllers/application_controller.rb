#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2023 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
class ApplicationController < ActionController::Base
  #TODO: need to allow this but it messes up the ujs autocomplete select requests
  #protect_from_forgery

  #include WebSharedHelper

  #include ApplicationHelperPaginate
end
