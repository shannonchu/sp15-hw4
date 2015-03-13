Rails.application.routes.draw do

  get "users", to: "users#index"
  get "users/new", to: "users#new"
  get "users/:id", to: "users#show", as: :user
  post "users", to: "users#create"

  get "dogs", to: "dogs#index"
  get 'dogs/new', to: "dogs#new" 
  # so order of these actually matters because when 
  # you had get dogs/:id before get dogs/new, it would
  # hit the get id call first and return an error! 
  # because there's no id "new"
  get "dogs/:id", to: "dogs#show", as: :dog
  post "dogs", to: "dogs#create"
end
