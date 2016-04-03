Rails.application.routes.draw do

  constraints subdomain: 'api' do
    namespace :api, defaults: {fomat: 'json'} do
      namespace :v1 do
        resources :tourist_spots, only: :index
      end
    end
  end

  get '/', to: 'home#index'
  root 'home#index'
  resources :guide_services do
    resources :packeges
  end
  resources :local_businesses do
    resources :products
  end
  resources :tourist_spots do
    resources :spots
  end
  resources :thanas
  resources :districts
  resources :divisions
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users


end
