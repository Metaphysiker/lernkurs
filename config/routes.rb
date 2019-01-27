Rails.application.routes.draw do
  resources :courses

  root 'static_pages#welcome'

  get '/course_overview', to: 'static_pages#course_overview', as: 'course_overview'

  #RENDER
  post '/render_slide', to: 'courses#render_slide', as: 'render_slide'
  get '/slide/:id/:current_slide', to: 'courses#slide', as: 'slide'
  get '/navigation_buttons/:id/:current_slide', to: 'courses#navigation_buttons', as: 'navigation_buttons'

  get "/hulu", to: "courses#hulu", as: "hulu"

  get "/textversion/:id", to: "static_pages#textversion", as: 'textversion'
  get "/test", to: "static_pages#test", as: 'test'

  post '/set_current_slide', to: 'courses#set_current_slide', as: 'set_current_slide'
  post '/add_points_to_course', to: 'courses#add_points_to_course', as: 'add_points_to_course'
end
