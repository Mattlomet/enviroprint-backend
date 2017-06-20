Rails.application.routes.draw do
    resources :cars
    resources :planes
    resources :trains
    resources :subways
    resources :buses
    resources :foods
    resources :users
    resources :utilities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
