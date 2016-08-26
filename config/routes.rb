Rails.application.routes.draw do
  resources :records
  root to: "babies#index"
  resources :babies do
    resources :records, only: [ :create, :destroy, :edit ]
    # resources :parents, collection: { add_to_baby: :post}
  end

  get "babies/:baby_id/parents/find" => "parents#find", as: "find_parent_for_baby"
  post "babies/:baby_id/parents" => "parents#add_for_baby", as: "add_parent_for_baby"
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'
  resources :sessions, only: [ :new, :create, :destroy ]
  resources :parent_profiles, only: [ :show, :create, :edit, :update ]

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
