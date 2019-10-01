Rails.application.routes.draw do
  resources :microposts
  devise_for :users, controllers: {registrations: 'registrations'}
  post 'post_seen/:id', to: 'seen_posts#create', as: :post_seen
  post 'seen_posts/destroy'
  get 'home/index'

  root 'home#index'
  # get 'microposts/watched/:id', to: 'microposts#watched'
  # patch 'microposts/watched/:id', to: 'microposts#watched', as: :post_watched

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end