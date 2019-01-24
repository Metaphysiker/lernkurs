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
end
