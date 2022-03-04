Rails.application.routes.draw do
  root to: 'home#index'
  resources :currencies, only: %i[new create show index]
  resources :coins, only: %i[new create]
end
