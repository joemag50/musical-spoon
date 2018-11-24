Rails.application.routes.draw do
  resources :categories
  resources :images
  devise_for :users
  root to: 'static_pages#home'
end
