MapTap::Application.routes.draw do

  get "home/index", :as => :home
  match 'home/:id' => "home#show"

  resources :tags
  resources :services

  root :to => 'home#index'

end
