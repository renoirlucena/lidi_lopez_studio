Rails.application.routes.draw do
  resources :child_sessions
  resources :family_sessions
  resources :baby_sessions
  resources :cake_smash_sessions
  resources :newborn_sessions
  resources :maternity_sessions

  # Contact Forms Routes
  get 'contact_forms/new'
  post 'contact_forms/create'

  # User Profiles Routes
  resources :user_profiles

  # User Registration Routes
  get 'user_registration/login'
  post 'user_registration/authenticate'
  get 'user_registration/logout'
  get 'user_registration/new'
  post 'user_registration/create'

  # Users Routes
  resources :users

  # Maternities Routes
  resources :maternities

  # Newborns Routes
  resources :newborns

  # Cake Smashes Routes
  resources :cake_smashes

  # Babies Routes
  resources :babies

  # Families Routes
  resources :families

  # Children Routes
  resources :children

  # Packages Routes
  resources :packages

  # Defines the root path route ("/")
  # root "articles#index"
end
