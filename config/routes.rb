Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  get 'pages/index'
  get 'user/:id' => "pages#profil"
  get 'pages/explore'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
