Rails.application.routes.draw do
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  
  root to: "pages#index"

  resources :articles

  resources :pages
end
