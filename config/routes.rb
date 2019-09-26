Rails.application.routes.draw do
  resources :microposts
  devise_for :users, controllers: {registrations: 'registrations'}
  get 'seen_posts/create', to: 'seen_posts#create', as: :post_seen
  get 'seen_posts/destroy'
  get 'home/index'

  root 'home#index'
  # get 'microposts/watched/:id', to: 'microposts#watched'
  # patch 'microposts/watched/:id', to: 'microposts#watched', as: :post_watched

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end