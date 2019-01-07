Rails.application.routes.draw do
  root 'static_pages#welcome'
  get '/course_overview', to: 'static_pages#course_overview', as: 'course_overview'
end
