Rails.application.routes.draw do
  resources :courses
  resources :accounts

  root 'static_pages#welcome'

  get '/course_overview', to: 'static_pages#course_overview', as: 'course_overview'

  get '/why_ethics', to: 'static_pages#why_ethics', as: 'why_ethics'
  get '/structure', to: 'static_pages#structure', as: 'structure'

  #RENDER
  post '/render_slide', to: 'courses#render_slide', as: 'render_slide'
  get '/slide/:id/:current_slide', to: 'courses#slide', as: 'slide'
  get '/navigation_buttons/:id/:current_slide', to: 'courses#navigation_buttons', as: 'navigation_buttons'

  get "/hulu", to: "courses#hulu", as: "hulu"

  get "/textversion/:id", to: "static_pages#textversion", as: 'textversion'
  get "/test", to: "static_pages#test", as: 'test'
  get "/overview", to: "static_pages#overview", as: 'overview'
  get "/register", to: "static_pages#register", as: 'register'
  get "/group_overview/:code", to: "static_pages#group_overview", as: 'group_overview'

  post '/set_current_slide', to: 'courses#set_current_slide', as: 'set_current_slide'
  post '/add_points_to_course', to: 'courses#add_points_to_course', as: 'add_points_to_course'
  post '/set_status', to: 'courses#set_status', as: 'set_status'
  post '/set_result1', to: 'courses#set_result1', as: 'set_result1'
  post '/set_orden', to: 'courses#set_orden', as: 'set_orden'
  post '/set_group', to: 'static_pages#set_group', as: 'set_group'
end
