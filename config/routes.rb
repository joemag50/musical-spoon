Rails.application.routes.draw do
  resources :categories
  resources :images
  devise_for :users
  root to: 'static_pages#home'

  get :images_json, to: 'api#json_index'
  get :create_image, to: 'api#create_image'
end
