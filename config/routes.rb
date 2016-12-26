Rails.application.routes.draw do
  resources :sleeping_car, controller: 'cars'
  resources :coupe_car, controller: 'cars'
  resources :economy_car, controller: 'cars'
  resources :sedentary_car, controller: 'cars'
  resources :cars
  resources :trains
  resources :railway_stations
  resources :routes
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
end
