Base2Calculator::Application.routes.draw do
  resources :calculations do
    member do
      get :copy
      get :excel
    end
  end
  resources :error
  resources :home do
    collection do
      get :deferred_uri
    end
  end
  resources :logon do
    member do
      get :multi
    end
  end
  resources :meeting_dates, controller: 'calculations'
  resources :organizations do
    member do
      delete :remove_content
      delete :remove_event
      delete :remove_parent_organization
      get :copy, :to => 'organizations#copy'
    end
    collection do
      get :add_sport_facility_render
      get :delete_sport_facility_render
    end
  end
  resources :people do
    member do
      delete :remove_organization
      post :add_organization
    end
  end
end
=begin
  DEBUG
  resources :archives do
    member do
      get :restore
    end
  end
  resources :attachments do
    member do
      get :download
    end
  end
  resources :autodiscover
  resources :content_feeds
  resources :contents do
    member do
      delete :remove_content
      delete :remove_event
      delete :remove_organization
      get    :copy
      post   :add_content
      post   :add_event
      post   :add_organization
    end
  end
  resources :contents_browser
  resources :content_content_connections_select
  resources :context_organizations
  resources :context_organization_view_maps
  resources :context_organization_context_view_maps
  resources :email_queues
  resources :event_date_patterns
  resources :event_content_connections_select
  resources :event_venue_select
  resources :events do
    member do
      get    :copy
      delete :remove_content
      delete :remove_organization
      post   :add_content
      post   :add_organization
    end
  end
  resources :followup
  resources :help
  resources :invalid
  resources :list_makers do
    collection do
      get :reset_list
      get :save_list
    end
  end
  resources :logoff
  resources :new_design
  resources :notes do
    member do
      get    :reassign
      delete :remove_attachment
      delete :remove_followup_by
      delete :remove_note_for_organization
      delete :remove_note_for_person
    end
  end
  resources :organization_content_connections_select
  resources :people_convention_sales_goals
  resources :people_notes
  resources :people_notes_resources
  resources :people_privileges
  resources :people_tags
  resources :people_view_maps
  resources :people_context_view_maps
  resources :previews
  resources :redirects
  resources :report_builder do 
    post :generate
  end
  resources :reports do
    collection do
      get :add_property_name
      get :select_property_name
      get :set_property_checkbox
      get :set_parameter_type
      get :set_parameter_value
      get :set_parameter_checkbox
      get :filter_property_names
      get :position_property_name
      get :delete_property_name
      get :set_primary_table_name
      get :get_report_property_options
    end
  end
  resources :resources do
    member do
      get :copy
      get :download
    end
  end
  resources :web_ajax do
    member do
      get :description
      get :nearby
    end
  end
  resources :web_site_searches do
    collection do
      get :search_all
    end
  end
  resources :tagmaps do
    member do
      get :copy
    end
  end
  resources :tagmaps_select
  resources :ui_requests do
    member do
      get 'toggle'
    end
  end
  resources :wysiwyg_images


  resources :approvals
  resources :calculations_view
  resources :coupons
  resources :dashboard
  resources :dashboard_current_year do
    collection do
      get :listing
    end
  end
  resources :dashboard_production do
    collection do
      get :listing
    end
  end
  resources :dashboard_production_detail do
    collection do
      get :listing
    end
  end
  resources :dashboard_sales_team do
    collection do
      get :listing
    end
  end
  resources :economics
  resources :housing_events
  resources :jupiter_grids do
    member do
      delete :delete_attachment
    end
  end
  resources :jupiter_sales_leads do
    member do
      delete :delete_attachment
      get :upload_attachment
    end
  end
  resources :jupiter_tools
  resources :jupiter_usernames
  resources :meetings
  resources :products
  resources :referrals do
    collection do
      get :step_one
      get :step_two
      get :summary
      get :finished
      get :add_referral_for
    end
  end
  resources :meeting_dates do
    member do
      get :copy
      get :excel
    end
  end
  resources :meeting_date_group_tour_dates
  resources :meeting_date_releases
  resources :meeting_date_responses do
    collection do
      get :find_response
      get :initialize_response
    end
  end
  resources :meeting_date_response_emails
  resources :meeting_date_summaries
  resources :meeting_date_transactions
  resources :smiley do
    collection do
      get :dashboard
      get :green
      get :green_thank_you
      get :yellow
      get :yellow_thank_you
      get :red
      get :red_thank_you
      get :demo
    end
  end
  resources :subscription_transactions
  resources :subscriptions do
    collection do
      get :add_subscriber
      get :add_subscriber_render
      get :delete_subscriber_render
    end
    member do
      get :subscriber_render
    end
  end

  resources :web_coupons do
    collection do
      get :print_all
      get :show_samples
    end
  end
  resources :web_expedia do
    collection do
      get :book
    end
  end
  resources :web_partner_directory

  resources :publish_reports

  resources :group_tour_dates_ajax do
    collection do
      get :add_group_tour_date
      get :delete_group_tour_date, via: [:delete]
    end
  end

  resources :web_blog
  resources :web_blog_contents
  resources :web_blog_media
  resources :web_blog_media_upload

  resources :web_requests do
    member do
      get :download
    end
  end
  resources :web_requests_imports

  match '/rss/doingindy.xml' => 'web#shortcut', via: [:get]
  match '/rss/doingindy_audio.xml' => 'web#shortcut', via: [:get]

  get '/' => "web#index"
end
=end
