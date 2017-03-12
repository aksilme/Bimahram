Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/bimahramfr0641', as: 'rails_admin'
  root 'pages#index'
  get 'users/show'

  devise_for :users
  resources :users do
    resources :questions
  end




  get 'pages/index'
  get 'user/:id' => "pages#profil"
  get 'pages/explore'



end
