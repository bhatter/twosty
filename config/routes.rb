Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :requests
  resources :cuisines, only: [:new, :create]
  resources :meetings, only: [:show]
end
