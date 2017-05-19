Rails.application.routes.draw do

  root to: "static_pages#root"
  
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show, :index]
    resource :session, only: [:create, :destroy]
    resources :setlists, only: [:create, :index, :show, :update, :destroy]
    resources :attends, only: [:create]
  end




end
