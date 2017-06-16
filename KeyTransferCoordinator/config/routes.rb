Rails.application.routes.draw do
  get 'trips/search', to: 'trips#search', as: 'search'
  post 'trips/search', to: 'trips#search'
  resources :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'trips/index'
  root 'trips#search'
  
end
