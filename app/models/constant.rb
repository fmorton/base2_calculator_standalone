#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
#DEBUG: added from base2_cvb
#DEBUG: needs to be heavily edited
require_dependency "#{Base2Cms::Engine.root}/app/models/constant"

class Constant
  PULLDOWN_DIVIDER = "-------------"

  STATUS_CONSUMER_ACTIVE = Base2Constants::STATUS_ACTIVE
  STATUS_CONSUMER_INACTIVE = Base2Constants::STATUS_INACTIVE
  STATUS_CONSUMER_SUSPENDED = 41001
  STATUS_CONSUMER_COMPLIMENTARY = 41002
  STATUS_CONSUMER_UNAPPROVED = 41003
  STATUS_CONSUMER_OPT_OUT = 41004
  STATUS_CONSUMER_OPT_IN_UNCONFIRMED = 41005
  STATUS_CONSUMER_BOUNCED = 41006
  STATUS_CONSUMER_HELD = 41007
  STATUS_CONSUMER_VALIDATE_UNCONFIRMED = 41008
  STATUS_CONSUMER_UNKNOWN = 41099

  STATUS_SUPPLIER_ACTIVE = Base2Constants::STATUS_ACTIVE
  STATUS_SUPPLIER_INACTIVE = Base2Constants::STATUS_INACTIVE
  STATUS_SUPPLIER_SUSPENDED = 40001
  STATUS_SUPPLIER_COMPLIMENTARY = 40002
  STATUS_SUPPLIER_UNAPPROVED = 40003
  STATUS_SUPPLIER_OUT_OF_BUSINESS = 40004
  STATUS_SUPPLIER_UNPAID = 40005
  STATUS_SUPPLIER_LIMITED = 40006
  STATUS_SUPPLIER_UNUSED = 40007
  STATUS_SUPPLIER_SUBMITTED = 40008

  STATUS_CATEGORY_STRING_DEFINITE = "D"
  STATUS_CATEGORY_STRING_TENTATIVE = "T"
  STATUS_CATEGORY_STRING_LOST = "L"
  STATUS_CATEGORY_STRING_PROSPECT = "P"
  STATUS_CATEGORY_STRING_UNKNOWN = "U"

  TAGMAP_LABEL_PRIVILEGE_APPROVALS = "privilege_approvals"
  TAGMAP_LABEL_PRIVILEGE_CALCULATIONS = "privilege_calculations"
  TAGMAP_LABEL_PRIVILEGE_CONSUMER_MEETING_DATES = "privilege_consumer_meeting_dates"
  TAGMAP_LABEL_PRIVILEGE_CONVENTION_CENTER_GRIDS = "privilege_convention_center_grids"
  TAGMAP_LABEL_PRIVILEGE_CONVENTION_CENTER_PEOPLE = "privilege_convention_center_people"
  TAGMAP_LABEL_PRIVILEGE_CONVENTION_CENTER_RESEARCH = "privilege_convention_center_research"
  TAGMAP_LABEL_PRIVILEGE_COUPONS = "privilege_coupons"
  TAGMAP_LABEL_PRIVILEGE_DASHBOARD = "privilege_dashboard"
  TAGMAP_LABEL_PRIVILEGE_ECONOMIC_CONSTANT_VALUES = "privilege_economic_constant_values"
  TAGMAP_LABEL_PRIVILEGE_HOUSING_EVENTS = "privilege_housing_events"
  TAGMAP_LABEL_PRIVILEGE_HUMAN_RESOURCES = "privilege_human_resources"
  TAGMAP_LABEL_PRIVILEGE_MEETINGS = "privilege_meetings"
  TAGMAP_LABEL_PRIVILEGE_MEETING_BROWSER = "privilege_meeting_browser"
  TAGMAP_LABEL_PRIVILEGE_MEETING_DATE_CONFIGURATIONS = "privilege_meeting_date_configurations"
  TAGMAP_LABEL_PRIVILEGE_MEETING_DATES = "privilege_meeting_dates"
  TAGMAP_LABEL_PRIVILEGE_MEETING_DATE_GROUP_TOUR_DATES = "privilege_meeting_date_group_tour_dates"
  TAGMAP_LABEL_PRIVILEGE_MEETING_DATE_RESPONSES = "privilege_meeting_date_responses"
  TAGMAP_LABEL_PRIVILEGE_MEMBERSHIP = "privilege_membership"
  TAGMAP_LABEL_PRIVILEGE_PEOPLE_CONVENTION_SALES_GOALS = "privilege_people_convention_sales_goals"
  TAGMAP_LABEL_PRIVILEGE_PRODUCTS = "privilege_products"
  TAGMAP_LABEL_PRIVILEGE_PUBLICATIONS = "privilege_publications"
  TAGMAP_LABEL_PRIVILEGE_REFERRALS = "privilege_referrals"
  TAGMAP_LABEL_PRIVILEGE_SUBSCRIPTIONS = "privilege_subscriptions"
  TAGMAP_LABEL_PRIVILEGE_SUBSCRIPTION_TRANSACTIONS = "privilege_subscription_transactions"
  TAGMAP_LABEL_PRIVILEGE_SUPPLIER_ADMINISTRATOR = "privilege_supplier_administrator"
  TAGMAP_LABEL_PRIVILEGE_SUPPLIER_ASSIGN_SALES_MANAGERS = "privilege_supplier_assign_sales_managers"
  TAGMAP_LABEL_PRIVILEGE_SUPPLIER_PEOPLE = "privilege_supplier_people"
  TAGMAP_LABEL_PRIVILEGE_SUPPLIER_RESEARCH = "privilege_supplier_research"
  TAGMAP_LABEL_PRIVILEGE_SUPPLIER_SALES_LEADS = "privilege_supplier_sales_leads"
  TAGMAP_LABEL_PRIVILEGE_TOOLKIT_GALLERY = "privilege_toolkit_gallery"
  TAGMAP_LABEL_PRIVILEGE_TOOLKIT_MAPS = "privilege_toolkit_maps"
  TAGMAP_LABEL_PRIVILEGE_TRACES = "privilege_traces"
  TAGMAP_LABEL_PRIVILEGE_TRANSACTIONS = "privilege_transactions"
  TAGMAP_LABEL_PRIVILEGE_WEB_REQUESTS = "privilege_web_requests"
  TAGMAP_LABEL_PRIVILEGE_WEB_REQUESTS_IMPORT = "privilege_web_requests_import"

  TAGMAP_NAME_PRIVILEGE_APPROVALS = "Approvals"
  TAGMAP_NAME_PRIVILEGE_CALCULATIONS = "Calculations"
  TAGMAP_NAME_PRIVILEGE_CONSUMER_MEETING_DATES = "Consumer Meeting Dates"
  TAGMAP_NAME_PRIVILEGE_CONVENTION_CENTER_GRIDS = "Convention Center Grids"
  TAGMAP_NAME_PRIVILEGE_CONVENTION_CENTER_PEOPLE = "Convention Center People"
  TAGMAP_NAME_PRIVILEGE_CONVENTION_CENTER_RESEARCH = "Convention Center Research"
  TAGMAP_NAME_PRIVILEGE_COUPONS = "Coupons"
  TAGMAP_NAME_PRIVILEGE_DASHBOARD = "Dashboard"
  TAGMAP_NAME_PRIVILEGE_ECONOMIC_CONSTANT_VALUES = "Economic Constant Values"
  TAGMAP_NAME_PRIVILEGE_HOUSING_EVENTS = "Housing Events"
  TAGMAP_NAME_PRIVILEGE_HUMAN_RESOURCES = "Human Resources"
  TAGMAP_NAME_PRIVILEGE_MEETINGS = "Meetings"
  TAGMAP_NAME_PRIVILEGE_MEETING_BROWSER = "Meeting Browser"
  TAGMAP_NAME_PRIVILEGE_MEETING_DATES = "Meeting Dates"
  TAGMAP_NAME_PRIVILEGE_MEETING_DATE_CONFIGURATIONS = "Meeting Date Configurations"
  TAGMAP_NAME_PRIVILEGE_MEETING_DATE_GROUP_TOUR_DATES = "Meeting Date Group Tour Dates"
  TAGMAP_NAME_PRIVILEGE_MEETING_DATE_RESPONSES = "Meeting Date Responses"
  TAGMAP_NAME_PRIVILEGE_MEMBERSHIP = "Membership"
  TAGMAP_NAME_PRIVILEGE_PEOPLE_CONVENTION_SALES_GOALS = "People Convention Sales Goals"
  TAGMAP_NAME_PRIVILEGE_PRODUCTS = "Products"
  TAGMAP_NAME_PRIVILEGE_PUBLICATIONS = "Publications"
  TAGMAP_NAME_PRIVILEGE_REFERRALS = "Referrals"
  TAGMAP_NAME_PRIVILEGE_SUBSCRIPTIONS = "Subscriptions"
  TAGMAP_NAME_PRIVILEGE_SUBSCRIPTION_TRANSACTIONS = "Subscription Transactions"
  TAGMAP_NAME_PRIVILEGE_SUPPLIER_ADMINISTRATOR = "Supplier Administrator"
  TAGMAP_NAME_PRIVILEGE_SUPPLIER_ASSIGN_SALES_MANAGERS = "Supplier Assign Sales Managers"
  TAGMAP_NAME_PRIVILEGE_SUPPLIER_PEOPLE = "Supplier People"
  TAGMAP_NAME_PRIVILEGE_SUPPLIER_RESEARCH = "Supplier Research"
  TAGMAP_NAME_PRIVILEGE_SUPPLIER_SALES_LEADS = "Supplier Meeting Dates"
  TAGMAP_NAME_PRIVILEGE_TOOLKIT_GALLERY = "Toolkit Gallery"
  TAGMAP_NAME_PRIVILEGE_TOOLKIT_MAPS = "Toolkit Maps"
  TAGMAP_NAME_PRIVILEGE_TRACES = "Traces"
  TAGMAP_NAME_PRIVILEGE_TRANSACTIONS = "Transactions"
  TAGMAP_NAME_PRIVILEGE_WEB_REQUESTS = "Web Requests"
  TAGMAP_NAME_PRIVILEGE_WEB_REQUESTS_IMPORT = "Web Requests Import"

  #DEBUG: add definition
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS = []
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.coupons.convention_coupon", "Convention Coupon" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.coupons.coupon_essentials", "Coupon Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.coupons.leisure_coupon", "Leisure Coupon" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.coupons.system", "System" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.events.spectator_sports_category", "Sport Category" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_group_tour_dates.essentials", "Meeting Date Group Tour Date Essentials" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.housing_events.external_housing", "External Housing" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.housing_events.housing_event_essentials", "Housing Event Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.housing_events.meta_data", "Metadata" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.housing_events.splash_page", "Splash Page" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.housing_events.system", "System" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_transactions.meeting_date_transaction_essentials", "Meeting Date Transaction Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_transactions.system", "System" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_responses.meeting_date_response_attached_documents", "Meeting Date Response Attached Documents" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_responses.meeting_date_response_essentials", "Meeting Date Response Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_responses.meeting_date_response_rates", "Meeting Date Response Rates" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_responses.meeting_date_response_financials", "Meeting Date Response Commission" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_responses.meeting_date_response_notes", "Meeting Date Response Notes" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_responses.system", "System" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.approval", "Approval" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.approval_responses", "Approval Responses" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.booking_dates", "Booking Dates" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.category", "Meeting Date Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.convention_center_attachments", "Convention Center Attachments" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.convention_center_response", "Convention Center Response" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.convention_center_response_history", "Convention Center Response History" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.convention_center_space", "Convention Center Space" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.dates", "Dates" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.economic_impact_convention_center", "Economic Impact Convention Center" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.economic_impact_input", "Economic Impact Input" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.economic_tax_calculations", "Economic Tax Calculations" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.economic_visitor_spending", "Economic Visitor Spending" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.exhibit_space_requirements", "Exhibit Space Requirements" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.existing_tags", "Existing Tags" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.expense", "Expense" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.financial_commitment", "Financial Commitment" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.food_and_beverage", "Food and Beverage" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.general", "General" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.group_history", "Group History" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.group_tour", "Group Tour" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.group_tour_dates", "Group Tour Dates/Times" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.hotel_response_list", "Hotel Response List" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.hotel_viewable_notes", "Hotel Viewable Notes and Attached Documents" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.housing_room_detail", "Housing Room Detail" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.income", "Income" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.meeting_date_category", "Meeting Date Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.meeting_date_essentials", "Meeting Date Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.meeting_date_status_log", "Meeting Date Status Log" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.meeting_space_requirements", "Meeting Space Requirements" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.meeting_web_site", "Meeting Web Site" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.notes", "Notes" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.room_block", "Room Block" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.room_pick_up", "Room Pick Up" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.rooms", "Rooms" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.sales_services", "Sales/Services" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_dates.system", "System" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_group_tour_dates.meeting_date_group_tour_date_essentials", "Meeting Date Group Tour Date Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meeting_date_group_tour_dates.system", "System" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meetings.meeting_essentials", "Meeting Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meetings.meeting_tracking_code", "Meeting Tracking Code" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meetings.qualifications", "Qualifications" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.meetings.system", "System" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.navigation.coupons", "Coupons" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.navigation.convention_sales_goals", "Convention Sales Goals" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.navigation.meeting_browser", "Meeting Browser" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.navigation.meeting_date_responses", "Meeting Date Responses" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.navigation.meeting_dates", "Meeting Dates" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.navigation.meetings", "Meetings" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.navigation.referrals", "Referrals" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.navigation.subscriptions", "Subscriptions" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.navigation.subscription_transactions", "Subscription Transactions" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.navigation.transactions", "Transactions" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.accommodation_category", "Accommodation Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.accommodation_features", "Accommodation Features" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.accommodation_in_room_features", "Accommodation In-Room Features" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.accommodation_room_count", "Accommodation Room Count" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.accounting", "Accounting" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.admission", "Admission" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.attraction_category", "Attraction Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.consumer_details", "Consumer Details" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.consumer_meeting_details", "Consumer Meeting Details" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.consumer_tracking_code", "Consumer Tracking Code" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.general_category", "General Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.hours_of_operation_and_capacity", "Hours of Operation and Capacity" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.meeting_room_totals", "Meeting Room Totals" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.meeting_rooms", "Meeting Rooms" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.member_directory_category", "Member Directory Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.motor_coach_services", "Motor Coach Services" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.navigation_coupons", "Navigation Coupons" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.navigation_meeting_browser", "Navigation Meeting Browser" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.navigation_meeting_date_responses", "Navigation Meeting Date Responses" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.navigation_meeting_dates", "Navigation Meeting Dates" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.navigation_meetings", "Navigation Meetings" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.navigation_referrals", "Navigation Referrals" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.navigation_subscriptions", "Navigation Subscriptions" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.navigation_transactions", "Navigation Transactions" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.nightlife_category", "Nightlife Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.parking", "Parking" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.performing_arts_category", "Performing Arts Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.publication_cuisine", "Publication Cuisine" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.publications", "Publications" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.recreation_category", "Recreation Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.referral_category", "Referral Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.restaurant_category", "Restaurant Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.restaurant_essentials", "Restaurant Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.restaurant_cuisine", "Restaurant Cuisine" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.restaurant_filter", "Restaurant Filter" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.shopping_category", "Shopping Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.spectator_sports_category", "Sport Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.sport_facilities", "Sport Facilities" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.supplier_details", "Supplier Details" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.supplier_qualification", "Supplier Qualification" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.supplier_qualification_history", "Supplier Qualification History" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.transportation_category", "Transportation Category" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.venue_space", "Venue Space" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.organizations.visitor_guide_category", "Visitor Guide Category" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.consumer_application_privileges", "Consumer Application Privileges" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.consumer_direct_mail_type", "Consumer Direct Mail Type" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.consumer_interests", "Consumer Interests" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.consumer_role", "Consumer Role" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.consumer_tracking_code", "Consumer Tracking Code" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.personal_details", "Personal Details" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.personal_interests", "Personal Interests" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.supplier_application_privileges", "Supplier Application Privileges" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.supplier_details", "Supplier Details" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.supplier_position", "Supplier Position" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.supplier_role", "Supplier Role" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.people.supplier_tracking_code", "Supplier Tracking Code" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.products.accounting", "Accounting" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.products.exact_target", "Exact Target" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.products.product_essentials", "Product Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.products.system", "System" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.products.web_site", "Web Site" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.subscriptions.billing", "Billing" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.subscriptions.subscription_essentials", "Subscription Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.subscriptions.system", "System" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.subscription_transactions.subscription_transaction_essentials", "Subscription Transaction Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.subscription_transactions.system", "System" ]

  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.web_requests.contact_information", "Contact Information" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.web_requests.web_request_essentials", "Web Request Essentials" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.web_requests.request_details", "Request Details" ]
  TAGMAP_LABEL_VIEW_MAP_DEFAULTS << [ "view_map.web_requests.system", "System" ]

  ORGANIZATION_VIEW_TYPE_CONSUMERS = 'consumers'
  ORGANIZATION_VIEW_TYPE_ARTS_CULTURE = 'arts-culture'
  ORGANIZATION_VIEW_TYPE_ATTRACTIONS = 'attractions'
  ORGANIZATION_VIEW_TYPE_EVENTS = 'events'
  ORGANIZATION_VIEW_TYPE_GENERAL = 'general'
  ORGANIZATION_VIEW_TYPE_HOTELS = 'hotels'
  ORGANIZATION_VIEW_TYPE_MUSIC_NIGHTLIFE = 'music-nightlife'
  ORGANIZATION_VIEW_TYPE_PERFORMING_ARTS = 'performing-arts'
  ORGANIZATION_VIEW_TYPE_RECREATION = 'recreation'
  ORGANIZATION_VIEW_TYPE_RESTAURANTS = 'restaurants'
  ORGANIZATION_VIEW_TYPE_SHOPPING = 'shopping'
  ORGANIZATION_VIEW_TYPE_SPECTATOR_SPORTS = 'spectator-sports'
  ORGANIZATION_VIEW_TYPE_SPORTS_RECREATION = 'sports-recreation'
  ORGANIZATION_VIEW_TYPE_TRANSPORTATION = 'transportation'
  ORGANIZATION_VIEW_TYPE_WHATTODO = 'whattodo'
  ORGANIZATION_VIEW_TYPES_DO = 'arts-culture,attractions,music-nightlife,recreation,shopping,spectator-sports,performing-arts,sports-recreation'

  ORGANIZATION_VIEW_TYPE_MEDIA = 'media'
  ORGANIZATION_VIEW_TYPE_SUPPLIER = 'supplier'
end
