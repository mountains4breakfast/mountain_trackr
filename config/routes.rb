Rails.application.routes.draw do
  
  devise_for :users
  root 'dashboard#index'

  resources :mountains  
  get 'profile', to: "profile#show", as: :user_profile

end
