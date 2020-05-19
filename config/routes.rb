Rails.application.routes.draw do
  get 'responses/index'
  get 'responses/new'
  get 'responses/show'
  get 'responses/create'
  get 'responses/destroy'
  namespace :api, defaults: { format: :json } do 
    resources :users, only: [:show, :create]
    resource :session, only: [:create, :destroy]
    resources :stories, only: [:index, :show, :create, :update, :destroy]
  end

  root to: "static_pages#root"
end
