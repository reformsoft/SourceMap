MapTap::Application.routes.draw do

  resources :pending_requests


  get "home/index", :as => :home
  match "contact" => 'home#contact', :as => :contact
  match "more" => "home#more"
  match 'home/:id' => "home#show"

  resources :tags
  resources :services

  root :to => 'home#index'

end
