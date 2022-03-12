Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:show, :edit, :update]
  get 'homes/about' => 'homes#about', as:'about'

  resources :post_images, only: [:new, :index, :show, :create, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  #このサイトのtestアカウント pass: test12345
end
