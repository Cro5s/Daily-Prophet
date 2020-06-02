Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do 
    resources :users, only: [:show, :create]
    resources :responses, only: [:create, :destroy]
    resource :session, only: [:create, :destroy]
    resources :stories, only: [:index, :show, :create, :update, :destroy]
  end

  root to: "static_pages#root"
end
