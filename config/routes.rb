Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Sign up form
  get 'signup', to: 'players#new', as: 'player'
  # Sign up
  post 'signup', to: 'players#create'
end
