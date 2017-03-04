Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  resources :users
  root 'pages#index'

  get 'pages/index'
  get 'user/:id' => "pages#profil"
  get 'pages/explore'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
