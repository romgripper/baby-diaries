Rails.application.routes.draw do
  resources :babies
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'
  resources :sessions, only: [ :new, :create, :destroy ]
  resources :parent_profiles, only: [ :show, :create, :edit, :update ]

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
