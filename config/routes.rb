Hourcompo::Application.routes.draw do
  devise_for :users

  resources :jams
  resources :entries
  resources :comments
  resources :users

  root :to => "application#show"
end
