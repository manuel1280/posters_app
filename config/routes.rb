Rails.application.routes.draw do
  get 'home/index'
  resources :microposts
  devise_for :users, controllers: {registrations: 'registrations'}
  get 'microposts/watched/:id', to: 'microposts#watched'
  patch 'microposts/watched/:id', to: 'microposts#watched', as: :post_watched
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end