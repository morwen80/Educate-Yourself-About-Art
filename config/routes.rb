Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  get 'welcome/index'
  resources :artists do
    resources :artworks
  end
  resources :users do
    resources :lists
  end
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
