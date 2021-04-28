Rails.application.routes.draw do
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get    'signup', to: 'users#new'
  resources :users, except: [:new]

  root to: "pages#index"

  resources :articles

  resources :pages
end
