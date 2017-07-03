Rails.application.routes.draw do

  root 'users#index'

  resources :legs, :users, :trips

  get 'sessions/new'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:post, :get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login', to: 'sessions#login', as: 'login'
  get 'logout', to: 'sessions#logout', as: 'logout'
  get 'auth/google_oauth2', as: 'google_login'

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
