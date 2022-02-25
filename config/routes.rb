Rails.application.routes.draw do
  get "/users" => "users#index" #made before I realized we could only have so many routes, disregard
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/posts" => "posts#index"
  get "/posts/:id" => "posts#show"
  post "/posts" => "posts#create"
end
