Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/bimahramfr0641', as: 'rails_admin'
  root 'pages#intro'
  get 'users/show'

  devise_for :users, controllers: { sessions: 'bimdevise/sessions' }

  resources :users do
    member do
      get 'matches'
    end
  end
  resources :friendships, only: [:create, :destroy, :accept] do
    member do
      put :accept
    end
  end
  post   'create_friendship' => "friendships#create"
  delete 'delete_friendship' => "friendships#destroy"

  get 'pages/index'
  get 'pages/inscription'
  get 'pages/intro'
  get 'user/:id' => "pages#profil"
  get 'pages/explore'

end
