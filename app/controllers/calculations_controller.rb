#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: added from base2_cvb
#DEBUG: needs to be heavily edited
class CalculationsController < Base2CvbController
  include Base2CmsApplication
  include Base2TaggedController
  include Base2Layout

  layout :set_layout

  def get_model_class
    MeetingDate
  end

  def get_model_class_from_controller
    MeetingDate
  end

  def get_privilege_tagmap_label
    Constant::TAGMAP_LABEL_PRIVILEGE_CALCULATIONS
  end

  def create_if_new?
    can_update?(Constant::TAGMAP_LABEL_PRIVILEGE_CALCULATIONS)
  end

  def shared_context?
    true
  end

  def index_sort_column_default
    'organizations.name,meeting_dates.meeting_1_at desc'
  end

  def index_parameters
    @search_organization_name = @context.get_persistent_parameter(:meeting_date_organization_name, :c_saco)
    @search_meeting_date_date_from = @context.get_persistent_parameter(:meeting_date_date_from)
    @search_meeting_date_date_to = @context.get_persistent_parameter(:meeting_date_date_to)
    @search_meeting_date_status = @context.get_persistent_parameter(:meeting_date_status).to_i
    @search_meeting_date_category = @context.get_persistent_parameter(:meeting_date_category)
    @search_city = @context.get_persistent_parameter(:auto_complete_cities, :c_acc)
  end

  def index_search
    if @all_parameters_empty && all_empty?(@search_organization_name, @search_meeting_date_date_from, @search_meeting_date_date_to, @search_meeting_date_status, @search_meeting_date_category, @search_city) && MeetingDate.show_empty_query?
      query = nil
    else
      query = MeetingDate
      query = query.shared_context_scope
      query = query.additional_content("event_categories")
      query = query.optionally_include_organizations.select("organizations.name as organization_name")
      query = query.optionally_include_meetings
      query = query.include_status_string(false)
      query = query.include_context_organization_host_city("host_city_name")

      query = query.select("meeting_dates.context_organization_id")

      query = query.tagged_with_label(@search_meeting_date_category, "1") unless @search_meeting_date_category.blank?

      #if @search_organization_name.not_blank?
      #  if (organization_id = Organization.context_scope.where(:name => @search_organization_name).to_a).not_empty?
      #    query = query.where(:organization_id => organization_id)
      #  end
      #end

      if @search_organization_name.not_blank?
        query = query.like("organizations.name", @search_organization_name)
      end

      query = query.date_range('meeting_dates.meeting_1_at', @search_meeting_date_date_from, @search_meeting_date_date_to)

      if @search_meeting_date_status == 0
        query = query.where('meeting_dates.data_source_status!=?', Base2Constants::STATUS_INACTIVE)
      else
        if @search_meeting_date_status == Base2Constants::STATUS_INACTIVE
          query = query.equal('meeting_dates.data_source_status', @search_meeting_date_status)
        else
          query = query.where('meeting_dates.data_source_status!=?', Base2Constants::STATUS_INACTIVE)
          query = query.equal('meeting_dates.meeting_status_id', @search_meeting_date_status)
        end
      end

      if @search_city.not_blank?
        if (city_id = Tagmap.context_scope.where(:name => @search_city).where("(label like 'location_city_%')").to_a).not_empty?
          query = query.where(:host_city_id => city_id)
        end
      end

      query = query.joins(:meeting_date_economic_impact)
      query = query.select("meeting_date_economic_impacts.attendance_nights")
      query = query.select("meeting_date_economic_impacts.average_nightly_attendance")
      query = query.select("meeting_date_economic_impacts.calculated_people_per_room")
      query = query.select("meeting_date_economic_impacts.cc_equipment_standard_rate")
      query = query.select("meeting_date_economic_impacts.cc_food_and_beverage_standard_rate")
      query = query.select("meeting_date_economic_impacts.cc_internet_standard_rate")
      query = query.select("meeting_date_economic_impacts.cc_labor_reimbursement_standard_rate")
      query = query.select("meeting_date_economic_impacts.cc_other_standard_rate")
      query = query.select("meeting_date_economic_impacts.cc_space_rental_standard_rate")
      query = query.select("meeting_date_economic_impacts.cc_total_standard_rate")
      query = query.select("meeting_date_economic_impacts.cc_utilities_standard_rate")
      #query = query.select("meeting_date_economic_impacts.economic_attendance")
      #query = query.select("meeting_date_economic_impacts.impact_convention_operations_direct_total")
      #query = query.select("meeting_date_economic_impacts.impact_convention_operations_indirect_total")
      #query = query.select("meeting_date_economic_impacts.impact_convention_operations_induced_total")
      #query = query.select("meeting_date_economic_impacts.impact_convention_operations_jobs_total")
      #query = query.select("meeting_date_economic_impacts.net_income")
      #query = query.select("meeting_date_economic_impacts.net_spending_air_traffic")
      #query = query.select("meeting_date_economic_impacts.net_spending_entertainment")
      #query = query.select("meeting_date_economic_impacts.net_spending_food")
      #query = query.select("meeting_date_economic_impacts.net_spending_ground_transportation")
      #query = query.select("meeting_date_economic_impacts.net_spending_other")
      #query = query.select("meeting_date_economic_impacts.net_spending_room")
      #query = query.select("meeting_date_economic_impacts.net_spending_shopping")
      query = query.select("meeting_date_economic_impacts.percent_local_attendees")
      query = query.select("meeting_date_economic_impacts.spending_air_traffic")
      query = query.select("meeting_date_economic_impacts.spending_air_traffic_lever")
      query = query.select("meeting_date_economic_impacts.spending_air_traffic_lever_note")
      query = query.select("meeting_date_economic_impacts.spending_entertainment")
      query = query.select("meeting_date_economic_impacts.spending_entertainment_lever")
      query = query.select("meeting_date_economic_impacts.spending_entertainment_lever_note")
      query = query.select("meeting_date_economic_impacts.spending_food")
      query = query.select("meeting_date_economic_impacts.spending_food_lever")
      query = query.select("meeting_date_economic_impacts.spending_food_lever_note")
      query = query.select("meeting_date_economic_impacts.spending_ground_transportation")
      query = query.select("meeting_date_economic_impacts.spending_ground_transportation_lever")
      query = query.select("meeting_date_economic_impacts.spending_ground_transportation_lever_note")
      query = query.select("meeting_date_economic_impacts.spending_other")
      query = query.select("meeting_date_economic_impacts.spending_room")
      query = query.select("meeting_date_economic_impacts.spending_room_lever")
      query = query.select("meeting_date_economic_impacts.spending_room_lever_note")
      query = query.select("meeting_date_economic_impacts.spending_shopping")
      query = query.select("meeting_date_economic_impacts.spending_shopping_lever")
      query = query.select("meeting_date_economic_impacts.spending_shopping_lever_note")
      query = query.select("meeting_date_economic_impacts.tax_10_federal")
      query = query.select("meeting_date_economic_impacts.tax_10_label")
      query = query.select("meeting_date_economic_impacts.tax_10_local")
      query = query.select("meeting_date_economic_impacts.tax_10_spending")
      query = query.select("meeting_date_economic_impacts.tax_10_state")
      query = query.select("meeting_date_economic_impacts.tax_10_total")
      query = query.select("meeting_date_economic_impacts.tax_11_federal")
      query = query.select("meeting_date_economic_impacts.tax_11_label")
      query = query.select("meeting_date_economic_impacts.tax_11_local")
      query = query.select("meeting_date_economic_impacts.tax_11_spending")
      query = query.select("meeting_date_economic_impacts.tax_11_state")
      query = query.select("meeting_date_economic_impacts.tax_11_total")
      query = query.select("meeting_date_economic_impacts.tax_12_federal")
      query = query.select("meeting_date_economic_impacts.tax_12_label")
      query = query.select("meeting_date_economic_impacts.tax_12_local")
      query = query.select("meeting_date_economic_impacts.tax_12_spending")
      query = query.select("meeting_date_economic_impacts.tax_12_state")
      query = query.select("meeting_date_economic_impacts.tax_12_total")
      query = query.select("meeting_date_economic_impacts.tax_13_federal")
      query = query.select("meeting_date_economic_impacts.tax_13_label")
      query = query.select("meeting_date_economic_impacts.tax_13_local")
      query = query.select("meeting_date_economic_impacts.tax_13_spending")
      query = query.select("meeting_date_economic_impacts.tax_13_state")
      query = query.select("meeting_date_economic_impacts.tax_13_total")
      query = query.select("meeting_date_economic_impacts.tax_14_federal")
      query = query.select("meeting_date_economic_impacts.tax_14_label")
      query = query.select("meeting_date_economic_impacts.tax_14_local")
      query = query.select("meeting_date_economic_impacts.tax_14_spending")
      query = query.select("meeting_date_economic_impacts.tax_14_state")
      query = query.select("meeting_date_economic_impacts.tax_14_total")
      query = query.select("meeting_date_economic_impacts.tax_15_federal")
      query = query.select("meeting_date_economic_impacts.tax_15_label")
      query = query.select("meeting_date_economic_impacts.tax_15_local")
      query = query.select("meeting_date_economic_impacts.tax_15_spending")
      query = query.select("meeting_date_economic_impacts.tax_15_state")
      query = query.select("meeting_date_economic_impacts.tax_15_total")
      query = query.select("meeting_date_economic_impacts.tax_16_federal")
      query = query.select("meeting_date_economic_impacts.tax_16_label")
      query = query.select("meeting_date_economic_impacts.tax_16_local")
      query = query.select("meeting_date_economic_impacts.tax_16_spending")
      query = query.select("meeting_date_economic_impacts.tax_16_state")
      query = query.select("meeting_date_economic_impacts.tax_16_total")
      query = query.select("meeting_date_economic_impacts.tax_1_federal")
      query = query.select("meeting_date_economic_impacts.tax_1_label")
      query = query.select("meeting_date_economic_impacts.tax_1_local")
      query = query.select("meeting_date_economic_impacts.tax_1_spending")
      query = query.select("meeting_date_economic_impacts.tax_1_state")
      query = query.select("meeting_date_economic_impacts.tax_1_total")
      query = query.select("meeting_date_economic_impacts.tax_2_federal")
      query = query.select("meeting_date_economic_impacts.tax_2_label")
      query = query.select("meeting_date_economic_impacts.tax_2_local")
      query = query.select("meeting_date_economic_impacts.tax_2_spending")
      query = query.select("meeting_date_economic_impacts.tax_2_state")
      query = query.select("meeting_date_economic_impacts.tax_2_total")
      query = query.select("meeting_date_economic_impacts.tax_3_federal")
      query = query.select("meeting_date_economic_impacts.tax_3_label")
      query = query.select("meeting_date_economic_impacts.tax_3_local")
      query = query.select("meeting_date_economic_impacts.tax_3_spending")
      query = query.select("meeting_date_economic_impacts.tax_3_state")
      query = query.select("meeting_date_economic_impacts.tax_3_total")
      query = query.select("meeting_date_economic_impacts.tax_4_federal")
      query = query.select("meeting_date_economic_impacts.tax_4_label")
      query = query.select("meeting_date_economic_impacts.tax_4_local")
      query = query.select("meeting_date_economic_impacts.tax_4_spending")
      query = query.select("meeting_date_economic_impacts.tax_4_state")
      query = query.select("meeting_date_economic_impacts.tax_4_total")
      query = query.select("meeting_date_economic_impacts.tax_5_federal")
      query = query.select("meeting_date_economic_impacts.tax_5_label")
      query = query.select("meeting_date_economic_impacts.tax_5_local")
      query = query.select("meeting_date_economic_impacts.tax_5_spending")
      query = query.select("meeting_date_economic_impacts.tax_5_state")
      query = query.select("meeting_date_economic_impacts.tax_5_total")
      query = query.select("meeting_date_economic_impacts.tax_6_federal")
      query = query.select("meeting_date_economic_impacts.tax_6_label")
      query = query.select("meeting_date_economic_impacts.tax_6_local")
      query = query.select("meeting_date_economic_impacts.tax_6_spending")
      query = query.select("meeting_date_economic_impacts.tax_6_state")
      query = query.select("meeting_date_economic_impacts.tax_6_total")
      query = query.select("meeting_date_economic_impacts.tax_7_federal")
      query = query.select("meeting_date_economic_impacts.tax_7_label")
      query = query.select("meeting_date_economic_impacts.tax_7_local")
      query = query.select("meeting_date_economic_impacts.tax_7_spending")
      query = query.select("meeting_date_economic_impacts.tax_7_state")
      query = query.select("meeting_date_economic_impacts.tax_7_total")
      query = query.select("meeting_date_economic_impacts.tax_8_federal")
      query = query.select("meeting_date_economic_impacts.tax_8_label")
      query = query.select("meeting_date_economic_impacts.tax_8_local")
      query = query.select("meeting_date_economic_impacts.tax_8_spending")
      query = query.select("meeting_date_economic_impacts.tax_8_state")
      query = query.select("meeting_date_economic_impacts.tax_8_total")
      query = query.select("meeting_date_economic_impacts.tax_9_federal")
      query = query.select("meeting_date_economic_impacts.tax_9_label")
      query = query.select("meeting_date_economic_impacts.tax_9_local")
      query = query.select("meeting_date_economic_impacts.tax_9_spending")
      query = query.select("meeting_date_economic_impacts.tax_9_state")
      query = query.select("meeting_date_economic_impacts.tax_9_total")
      query = query.select("meeting_date_economic_impacts.total_event_spending")
      query = query.select("meeting_date_economic_impacts.total_impact")
      query = query.select("meeting_date_economic_impacts.total_impact_direct")
      query = query.select("meeting_date_economic_impacts.total_impact_direct_jobs")
      #query = query.select("meeting_date_economic_impacts.total_impact_direct_va")
      query = query.select("meeting_date_economic_impacts.total_impact_direct_wages")
      query = query.select("meeting_date_economic_impacts.total_impact_indirect")
      query = query.select("meeting_date_economic_impacts.total_impact_indirect_jobs")
      #query = query.select("meeting_date_economic_impacts.total_impact_indirect_va")
      query = query.select("meeting_date_economic_impacts.total_impact_indirect_wages")
      #query = query.select("meeting_date_economic_impacts.total_impact_induced")
      #query = query.select("meeting_date_economic_impacts.total_impact_induced_jobs")
      #query = query.select("meeting_date_economic_impacts.total_impact_induced_va")
      #query = query.select("meeting_date_economic_impacts.total_impact_induced_wages")
      #query = query.select("meeting_date_economic_impacts.total_impact_with_induced")
      query = query.select("meeting_date_economic_impacts.total_net_spending")
      query = query.select("meeting_date_economic_impacts.total_spending")
      query = query.select("meeting_date_economic_impacts.total_tax")
      query = query.select("meeting_date_economic_impacts.total_tax_federal")
      query = query.select("meeting_date_economic_impacts.total_tax_local")
      query = query.select("meeting_date_economic_impacts.total_tax_state")

      #NOTE: 2017.04.25...remove per james
      ##query = query.select("meeting_date_economic_impacts.cc_equipment_description")
      ##query = query.select("meeting_date_economic_impacts.cc_food_and_beverage_description")
      ##query = query.select("meeting_date_economic_impacts.cc_internet_description")
      ##query = query.select("meeting_date_economic_impacts.cc_labor_reimbursement_description")
      ##query = query.select("meeting_date_economic_impacts.cc_other_description")
      ##query = query.select("meeting_date_economic_impacts.cc_space_rental_description")
      ##query = query.select("meeting_date_economic_impacts.cc_utilities_description")

      ##query = query.select("meeting_date_economic_impacts.cc_adjustment_direct_cost")
      ##query = query.select("meeting_date_economic_impacts.cc_adjustment_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_equipment_direct_cost")
      ##query = query.select("meeting_date_economic_impacts.cc_equipment_discount_1")
      ##query = query.select("meeting_date_economic_impacts.cc_equipment_discount_2")
      ##query = query.select("meeting_date_economic_impacts.cc_equipment_gross_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_equipment_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_food_and_beverage_direct_cost")
      ##query = query.select("meeting_date_economic_impacts.cc_food_and_beverage_discount_1")
      ##query = query.select("meeting_date_economic_impacts.cc_food_and_beverage_discount_2")
      ##query = query.select("meeting_date_economic_impacts.cc_food_and_beverage_gross_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_food_and_beverage_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_internet_direct_cost")
      ##query = query.select("meeting_date_economic_impacts.cc_internet_discount_1")
      ##query = query.select("meeting_date_economic_impacts.cc_internet_discount_2")
      ##query = query.select("meeting_date_economic_impacts.cc_internet_gross_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_internet_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_labor_reimbursement_direct_cost")
      ##query = query.select("meeting_date_economic_impacts.cc_labor_reimbursement_discount_1")
      ##query = query.select("meeting_date_economic_impacts.cc_labor_reimbursement_discount_2")
      ##query = query.select("meeting_date_economic_impacts.cc_labor_reimbursement_gross_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_labor_reimbursement_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_other_direct_cost")
      ##query = query.select("meeting_date_economic_impacts.cc_other_discount_1")
      ##query = query.select("meeting_date_economic_impacts.cc_other_discount_2")
      ##query = query.select("meeting_date_economic_impacts.cc_other_gross_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_other_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_overhead_direct_cost")
      ##query = query.select("meeting_date_economic_impacts.cc_overhead_direct_cost_all_space")
      ##query = query.select("meeting_date_economic_impacts.cc_overhead_direct_cost_difference")
      ##query = query.select("meeting_date_economic_impacts.cc_overhead_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_space_rental_direct_cost")
      ##query = query.select("meeting_date_economic_impacts.cc_space_rental_discount_1")
      ##query = query.select("meeting_date_economic_impacts.cc_space_rental_discount_2")
      ##query = query.select("meeting_date_economic_impacts.cc_space_rental_gross_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_space_rental_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_total_direct_cost")
      ##query = query.select("meeting_date_economic_impacts.cc_total_direct_cost_all_space")
      ##query = query.select("meeting_date_economic_impacts.cc_total_discount_1")
      ##query = query.select("meeting_date_economic_impacts.cc_total_discount_2")
      ##query = query.select("meeting_date_economic_impacts.cc_total_gross_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_total_gross_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_total_net_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_total_net_net_revenue_all_space")
      ##query = query.select("meeting_date_economic_impacts.cc_total_net_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_total_net_revenue_all_space")
      ##query = query.select("meeting_date_economic_impacts.cc_total_net_revenue_debt")
      ##query = query.select("meeting_date_economic_impacts.cc_total_net_revenue_debt_all_space")
      ##query = query.select("meeting_date_economic_impacts.cc_total_net_revenue_operations")
      ##query = query.select("meeting_date_economic_impacts.cc_total_net_revenue_operations_all_space")
      ##query = query.select("meeting_date_economic_impacts.cc_utilities_direct_cost")
      ##query = query.select("meeting_date_economic_impacts.cc_utilities_discount_1")
      ##query = query.select("meeting_date_economic_impacts.cc_utilities_discount_2")
      ##query = query.select("meeting_date_economic_impacts.cc_utilities_gross_revenue")
      ##query = query.select("meeting_date_economic_impacts.cc_utilities_net_revenue")

      query = query.select_for_calculations
      query = query.limit(2500)
      query = query.order(index_order)
    end
    query
  end

  def detail_setup(o)
    @calculation_status_logs = o.meeting_date_status_logs.default_order
    #@calculation_financial_commitment = o.meeting_date_financial_commitment
    @calculation_economic_impact = o.meeting_date_economic_impact
    @calculation_economic_impact = o.build_meeting_date_economic_impact if @calculation_economic_impact.nil?
  end

  def export_additional_content_application(context, index_results)
    return index_results if index_results.empty?

    ids = index_results.get_array
    meeting_date_categories = HashArray.new

    Tag.context_scope.where(:parent_object_id => ids).where(:parent_object_type => 'MeetingDate').where("tagmaps.label like 'meeting_date_category_%'").order("tagmaps.name").each do |tag|
      meeting_date_categories.add(tag.parent_object_id, tag.name)
    end

    index_results.each do |index_result|
      index_result['event_categories'] = (meeting_date_categories.get(index_result.id).join(', ') rescue '')
    end

    index_results
  end
end