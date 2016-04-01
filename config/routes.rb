Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :guide_services
  resources :local_businesses
  resources :locations
  resources :tourist_spots
  devise_for :users
  get '/', to: 'home#index'
  root 'home#index'
end
