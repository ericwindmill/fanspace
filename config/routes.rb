Rails.application.routes.draw do


  root to: "static_pages#root"
  
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show, :index, :update]
    resource :session, only: [:create, :destroy]
    resources :setlists, only: [:create, :index, :show, :update, :destroy]
    resource :attend, only: [:create, :destroy]
    resource :comment, only: [:create, :update, :destroy]
    resources :albums, only: [:index]
  end


end
