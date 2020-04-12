Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new'
  # get "/login", to: "sessions#new"
  post '/login' => 'sessions#create'
  # post "/login", to: "sessions#create"
  post '/logout' => 'sessions#destroy'
  # post "/logout", to: "sessions#destroy"
  
end
