Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :requests, only: [:new, :create, :update] do
    resources :matches, only: :index
  end
  resources :cuisines, only: [:new, :create]
  resources :meetings, only: [:index, :create, :show] do
    resources :messages, only: [:create]
  end
end
