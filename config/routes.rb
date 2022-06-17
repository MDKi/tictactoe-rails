Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "players#new" # TODO Add a root page

  # Sign up / Register form
  get 'signup', to: 'players#new', as: 'players'
  # Sign up / Register
  post 'signup', to: 'players#create'

  # Sign in / Log in form
	get 'login', to: 'sessions#new'
	# Sign in / Log in
	post 'login', to: 'sessions#create'
	# Sign out / Log out
	delete 'logout', to: 'sessions#destroy'  
end
