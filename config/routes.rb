Rails.application.routes.draw do
  get '/users/welcome', to: "users#welcome"
  resources :users, only: [:new, :create]
  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
