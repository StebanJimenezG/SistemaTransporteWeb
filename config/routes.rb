Rails.application.routes.draw do


  devise_for :users
  resources :vehiculos
  resources :pasajeros
  resources :recorridos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'vehiculos#index'
end
