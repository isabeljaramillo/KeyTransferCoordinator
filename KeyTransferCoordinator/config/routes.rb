Rails.application.routes.draw do
  get 'trips/result', to: 'trips#result', as: 'result'
  resources :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'trips/index'
  root 'trips#index'
  
end
