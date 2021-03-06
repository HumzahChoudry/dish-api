Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/login", to: "auth#login"
  post "/signup", to: "auth#create"
  get "/get_user", to: "auth#get_current_user"
  namespace :api do
    namespace :v1 do
      resources :reviews, only: [:index, :show, :create]
      # post '/reviews', to: 'reviews#create'
      # get '/reviews', to: 'reviews#index'
      # get '/reviews/:id', to: 'reviews#show'
      resources :users, only: [:index, :show]
      # get "/users/:id", to: "users#show"
      # get '/users', to: "users#index"
      get '/users/search/:slug', to: 'users#query_users'
      get '/restaurants/search/:slug', to: 'restaurants#query_restaurants'
      resources :relationships, only: [:create, :destroy]
      # post '/relationships', to: 'relationships#create'
    end
  end
end
