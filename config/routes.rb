Project3Rickshaw::Application.routes.draw do
  root :to => 'application#index'
  resources :drivers
  resources :stops
end
