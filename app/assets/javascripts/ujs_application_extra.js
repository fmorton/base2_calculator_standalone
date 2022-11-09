$(function() {
  $("#auto_complete_person_name").autocomplete({source: "/auto_complete/people"});
  $("#auto_complete_consumer_name").autocomplete({source: "/base2_cvb_auto_complete/consumers"});
  $("#auto_complete_supplier_name").autocomplete({source: "/base2_cvb_auto_complete/suppliers"});
  $("#auto_complete_venue_name").autocomplete({source: "/auto_complete/organizations"});
  $("#auto_complete_subscriber_name").autocomplete({source: "/auto_complete/people_and_organizations"});
  $("#auto_complete_product_name").autocomplete({source: "/base2_cvb_auto_complete/products"});

  $("#auto_complete_cities_1").autocomplete({source: "/auto_complete/cities"});
  $("#auto_complete_cities_2").autocomplete({source: "/auto_complete/cities"});
  $("#auto_complete_cities_3").autocomplete({source: "/auto_complete/cities"});
  $("#auto_complete_cities_4").autocomplete({source: "/auto_complete/cities"});
  $("#auto_complete_cities_5").autocomplete({source: "/auto_complete/cities"});

	$("#auto_complete_hotel_name").autocomplete({source: "/base2_cvb_auto_complete/hotels"});

  //NOTE: override base2_cvb from /auto_complete/organizations
  //TODO: this does not work if duplicate consumer/supplier names
  //$("#event_auto_complete_venue_name").autocomplete({source: "/base2_cvb_auto_complete/suppliers"});
});

add_auto_complete('auto_complete_note_product', '/notes_auto_complete/add_product', '/base2_cvb_auto_complete/products')
add_auto_complete('auto_complete_meeting', '/notes_auto_complete/add_meeting', '/base2_cvb_auto_complete/meetings')
add_auto_complete('auto_complete_meeting_date', '/notes_auto_complete/add_meeting_date', '/base2_cvb_auto_complete/meeting_dates')
add_auto_complete('auto_complete_meeting_and_meeting_date', '/notes_auto_complete/add_meeting_and_meeting_date', '/base2_cvb_auto_complete/meetings_and_meeting_dates')
add_auto_complete('auto_complete_organization_and_meeting', '/meeting_date_auto_complete/organization_and_meeting', '/auto_complete/organizations')

add_auto_complete('auto_complete_product', '/subscriptions/add_product', '/base2_cvb_auto_complete/products')
add_auto_complete('auto_complete_sales_manager', '/subscriptions/add_sales_manager', '/auto_complete/people_tagged_with_label_role_sales_manager')
add_auto_complete('auto_complete_subscriber', '/subscriptions/add_subscriber', '/auto_complete/people_and_organizations')

add_auto_complete('auto_complete_referral_for', '/referrals/add_referral_for', '/auto_complete/people')
