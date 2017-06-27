Rails.application.routes.draw do
  root 'legs#index'
  resources :legs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'legs/index', to: 'legs#index', as: 'index'
  get 'legs/list', to: 'legs#list', as: 'list'
  post 'legs/index', to: 'legs#index'

end
