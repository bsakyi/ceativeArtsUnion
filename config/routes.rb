Rails.application.routes.draw do
  get 'admin/index'
  resources :admin, only: [:index, :create, :update]
  devise_for :users
  resources :artist_works
  namespace :api do 
    namespace :v1 do  
      resources :users
    end 
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
