Rails.application.routes.draw do
  root to: "pages#index"

  resources :articles

  resources :pages
end