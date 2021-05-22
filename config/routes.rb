Rails.application.routes.draw do
  devise_for :users
  root to: 'surf_sessions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :surf_sessions
  resources :users, only: [:show]
end
