Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :experiences
  root to: 'experiences#index'
end
