Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  get '/my_profile', to: 'users#my_profile', as: 'my_profile'
  resources :trees do
    resources :adoptions, only: [:new, :create, :destroy]
  end

  resources :adoptions, only: [] do
    resources :reviews, only: [:create]
  end
end
