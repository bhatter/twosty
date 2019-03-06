Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :requests, only: [:new, :create] do
    resources :matches, only: :index
  end
  resources :cuisines, only: [:new, :create]
  resources :dates, only: [:index, :show, :create]
  resources :meetings, only: [:create, :show]
end
