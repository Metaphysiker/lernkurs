Rails.application.routes.draw do

  resources :applications
  resources :courses
  resources :accounts
  resources :logic_activities
  resources :surveys

  root 'static_pages#welcome'

  get '/course_overview', to: 'static_pages#course_overview', as: 'course_overview'

  get '/why_ethics', to: 'static_pages#why_ethics', as: 'why_ethics'
  get '/structure', to: 'static_pages#structure', as: 'structure'
  get '/feedback', to: 'static_pages#feedback', as: 'feedback'
  get '/faq', to: 'static_pages#faq', as: 'faq'
  get '/showcase', to: 'static_pages#showcase', as: 'showcase'
  get '/application_form/:course', to: 'static_pages#application_form', as: 'application_form'

  get '/logic', to: 'static_pages#logic', as: 'logic'

  #RENDER
  post '/render_slide', to: 'courses#render_slide', as: 'render_slide'
  get '/slide/:id/:current_slide', to: 'courses#slide', as: 'slide'
  get '/navigation_buttons/:id/:current_slide', to: 'courses#navigation_buttons', as: 'navigation_buttons'

  get "/hulu", to: "courses#hulu", as: "hulu"

  get "/textversion/:id", to: "static_pages#textversion", as: 'textversion'
  get "/test", to: "static_pages#test", as: 'test'
  get "/overview", to: "static_pages#overview", as: 'overview'
  get "/register/:code", to: "static_pages#register", as: 'register'
  get "/klasse", to: "static_pages#klasse", as: 'klasse'
  get "/klasse/:code", to: "static_pages#group_overview", as: 'group_overview'
  #get "/group_overview/:code", to: "static_pages#group_overview", as: 'group_overview'

  post '/set_current_slide', to: 'courses#set_current_slide', as: 'set_current_slide'
  post '/add_points_to_course', to: 'courses#add_points_to_course', as: 'add_points_to_course'
  post '/set_status', to: 'courses#set_status', as: 'set_status'
  post '/set_result1', to: 'courses#set_result1', as: 'set_result1'
  post '/set_orden', to: 'courses#set_orden', as: 'set_orden'
  post '/set_group', to: 'static_pages#set_group', as: 'set_group'
  get '/check_group', to: 'static_pages#check_group', as: 'check_group'

   #applications
   get '/applications_to_csv', to: 'applications#applications_to_csv', as: 'applications_to_csv'

   #survey
   get '/interactive_survey/:id', to: 'surveys#interactive_survey', as: 'interactive_survey'
   get '/update_counter_interactive_survey/:id/:counter', to: 'surveys#update_counter_interactive_survey', as: 'update_counter_interactive_survey'

   #logic
   post '/add_logic_activity', to: "logic_activities#add_logic_activity", as: 'add_logic_activity'

   #newsletters
   get '/newsletters/newsletter_box/:purpose/:text/:footer', to: 'newsletters#newsletter_box', as: 'newsletter_box'
   post '/newsletters/add_newsletter_to_list', to: "newsletters#add_newsletter_to_list", as: "add_newsletter_to_list"
   post '/newsletters/remove_newsletter_from_list/', to: "newsletters#remove_newsletter_from_list", as: "remove_newsletter_from_list"
   get '/newsletters/good_bye', to: "newsletters#good_bye", as: "good_bye"

   #home_requests
   get '/home_requests/successfully_added_home_request', to: 'home_requests#successfully_added_home_request', as: "successfully_added_home_request"

   post '/home_requests/archive/:id', to: "home_requests#archive", as: "archive_home_request"

   get '/home_requests/compare/:home_request_id/:home_offer_id', to: "home_requests#compare", as: "home_requests_compare"
   get '/home_requests/search_home_requests', to: 'home_requests#search_home_requests', as: 'search_home_requests'

   get "/download_vermittlungsbedingungen", to: 'home_requests#download_vermittlungsbedingungen', as: 'download_vermittlungsbedingungen'

   #home_offer
   get '/home_offers/successfully_added_home_offer', to: 'home_offers#successfully_added_home_offer', as: "successfully_added_home_offer"

   post '/home_offers/archive/:id', to: "home_offers#archive", as: "archive_home_offer"

   get '/home_offers/matches_for_home_offer', to: "home_offers#matches_for_home_offer", as: "matches_for_home_offer"
   get '/home_offers/compare/:home_offer_id/:home_request_id', to: "home_offers#compare", as: "home_offers_compare"
   get '/home_offers/search_home_offers', to: 'home_offers#search_home_offers', as: 'search_home_offers'

   #offerer
    get '/offerers/process_to_create_home_offer', to: 'offerers#process_to_create_home_offer', as: "process_to_create_home_offer"
    post '/offerers/add_offerer', to: "offerers#add_offerer", as: 'add_offerer'

    #home_offer
    post '/home_offers/add_home_offer_to_offerer', to: "home_offers#add_home_offer_to_offerer", as: 'add_home_offer_to_offerer'


   resources :newsletters
   resources :home_requests
   resources :home_offers
   resources :offerers

   devise_for :users

end
