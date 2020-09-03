Rails.application.routes.draw do
    root to: 'shops#index'
  resources :maps, only: [:index]
  resources :shops
  get '/map_request', to: 'maps#map', as: 'map_request'
end
