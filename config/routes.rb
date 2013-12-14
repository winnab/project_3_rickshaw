Project3Rickshaw::Application.routes.draw do
  resources :drivers
  resources :stops
  resources :locations
  root :to => 'application#index'

end
