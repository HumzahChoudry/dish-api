Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/login", to: "auth#login"
  get "/get_user", to: "auth#get_current_user"
  namespace :api do
    namespace :v1 do
      post '/reviews', to: 'reviews#create'
      get '/restaurants/search/:slug', to: 'restaurants#query_restaurants'
    end
  end
end
