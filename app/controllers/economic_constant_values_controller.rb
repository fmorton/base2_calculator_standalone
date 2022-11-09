#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: added from base2_cvb
#DEBUG: needs to be heavily edited
class EconomicConstantValuesController < Base2CvbController
  include Base2CmsApplication

  layout :set_layout

  def get_privilege_tagmap_label
    Constant::TAGMAP_LABEL_PRIVILEGE_ECONOMIC_CONSTANT_VALUES
  end

  def setup
    if !can_read?(get_privilege_tagmap_label)
      redirect_to :controller => 'error', :action => 'no_access' and return
    end

    @economic_constant_values_hash = EconomicConstantValuesHash.new
  end

  def index
    #edit
    #redirect_to :action => :show
    show
  end

  def show
    setup

    process_form

    setup
  end

  def edit
    setup
  end

  private

  def process_form
    params.each_pair do |name, value|
      if name.starts_with("economics_settings")
        parsed = name.split('-')
        reference_year = parsed[1]
        name = parsed[2]
        o = @economic_constant_values_hash[reference_year, name]

        if o.nil?
          next if value.blank?
          o = ConstantValue.new
          o.label = "economics_settings"
          o.name = name
          o.reference = reference_year
        else
          if value.blank?
            o.destroy
            next
          end
        end

        o.value = value
        o.save!
      end
    end
  end
end
