Rails.application.routes.draw do
  resources :surveys
  resources :applications
  resources :courses
  resources :accounts

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
end
