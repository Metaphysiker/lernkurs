Rails.application.routes.draw do
  resources :courses

  root 'static_pages#welcome'

  get '/course_overview', to: 'static_pages#course_overview', as: 'course_overview'

  #RENDER
  post '/render_slide', to: 'courses#render_slide', as: 'render_slide'
  post '/render_navigation_buttons', to: 'courses#render_navigation_buttons', as: 'render_navigation_buttons'
end
