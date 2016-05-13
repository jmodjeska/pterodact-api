Rails.application.routes.draw do
  resources :courses, only: [:index]
  resources :users
end
