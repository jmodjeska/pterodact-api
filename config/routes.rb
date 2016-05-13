Rails.application.routes.draw do
  post 'authenticate', to: 'auth#authenticate'

  resources :courses, only: [:index]
  resources :password_resets, only: [:create, :update]
end
