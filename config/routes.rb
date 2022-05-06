Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show, :edit, :update]
  resources :movies do
    resources :comments, :only => [:create, :destroy]
  end
  root 'movies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
