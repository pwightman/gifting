Gifting::Application.routes.draw do
  root to: "pages#home"

  match '/auth/:provider/callback' => 'authentications#create', via: :get
  match '/logout' => 'authentications#destroy', via: :get, as: :logout

  match '/dashboard' => 'users#dashboard', via: :get

  resources :lists, only: [:show]
  resources :groups, only: [:show]
end
